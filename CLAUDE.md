# privy

Ruby SDK for the Privy API. Stainless-generated core with a hand-authored `Privy::PrivyClient` + services layer composed on top.

## Commands

```bash
bundle install
bundle exec rake test                               # unit tests (WebMock-mocked, offline)
bundle exec rake test:integration                   # live-backend tests against staging; requires .env
PRIVY_LOG_HTTP=1 bundle exec rake test:integration  # with readable HTTP traces
bundle exec rake lint                               # lint
```

## Directory Structure

```
lib/privy.rb                       # Top-level require graph; custom requires at the bottom
lib/privy/client.rb                # GENERATED top-level API client
lib/privy/resources/ models/ internal/   # GENERATED service classes, model shapes, transport
lib/privy/public_api/              # CUSTOM Privy::PrivyClient + service wrappers
lib/privy/authorization/           # CUSTOM P-256 signing, RFC 8785 canonicalization, AuthorizationContext
test/privy/**/*_test.rb            # Unit tests (WebMock blocks net)
test/privy/integration/            # Live-backend tests (needs .env)
.env                               # Gitignored; TEST_APP_ID, TEST_APP_SECRET, optional TEST_API_URL
```

## Key Patterns

### Put new code under `public_api/` or `authorization/` — avoid editing generated files

Stainless regenerates its files upstream and merges the regenerated versions back via git. Edits to generated files aren't silently clobbered, but they can trigger merge conflicts on the next regen and leave your custom logic divorced from what the generator produces. Keep custom logic in the custom tree unless there's no alternative.

DO put new code under `lib/privy/public_api/` or `lib/privy/authorization/`:

```ruby
# lib/privy/public_api/services/wallets.rb
class Privy::Services::Wallets < Privy::Resources::Wallets
  def create(params = {}); end
end
```

DON'T edit generated files when a wrapper works:

```ruby
# lib/privy/resources/wallets.rb — GENERATED; edits here conflict on regen
def create(params); end
```

### Custom services subclass generated resources — call `super` to delegate

Services under `public_api/services/` inherit from the matching `Privy::Resources::*` and override only the methods that need header injection. Constructor takes both the generated `client:` and the custom `privy_client:`.

DO subclass and call `super`:

```ruby
class Privy::Services::Wallets < Privy::Resources::Wallets
  attr_reader :privy_client

  def initialize(client:, privy_client:)
    super(client: client)
    @privy_client = privy_client
  end

  def update(wallet_id, params = {})
    # header injection
    super(wallet_id, params)
  end
end
```

DON'T duplicate generated logic or skip `super`:

```ruby
class Privy::Services::Wallets
  def update(wallet_id, params = {})
    @client.request(method: :patch, path: "v1/wallets/#{wallet_id}", ...)
  end
end
```

### Flat public class names despite subdir organization

Files under `public_api/` and `authorization/` declare classes directly under `Privy::*`, not a namespace matching the path. Load order is explicit via `require_relative` in `lib/privy.rb`; no Zeitwerk.

DO: a file at `lib/privy/public_api/privy_client.rb` declares `Privy::PrivyClient`:

```ruby
module Privy
  class PrivyClient; end
end
```

DON'T nest the namespace to match the path:

```ruby
module Privy::PublicApi
  class PrivyClient; end
end
```

### Integration tests re-enable net connect; unit tests stay offline

`test/privy/test_helper.rb` blocks net via WebMock. The integration base class `Privy::Test::IntegrationTest` flips it back on in `setup` and skips when `.env` is missing. Put live-backend tests only under `test/privy/integration/`.

DO: unit test with WebMock stubs, anywhere under `test/privy/`:

```ruby
class Privy::Services::WalletsTest < Minitest::Test
  include WebMock::API
  def test_create_sends_idempotency_header
    stub = stub_request(:post, "https://api.staging.privy.io/v1/wallets")
            .with(headers: {"privy-idempotency-key" => "idem-1"})
    client.wallets.create(chain_type: :ethereum, idempotency_key: "idem-1")
    assert_requested stub
  end
end
```

DO: integration test under `test/privy/integration/` via the base class:

```ruby
class Privy::Test::Integration::WalletsTest < Privy::Test::IntegrationTest
  def test_create_ownerless_ethereum_wallet_returns_id_and_address
    wallet = client.wallets.create(chain_type: :ethereum)
    assert_equal(:ethereum, wallet.chain_type)
  end
end
```

DON'T place live-backend tests outside `test/privy/integration/`:

```ruby
# test/privy/services/wallets_test.rb
def test_hits_real_api
  client.wallets.create(chain_type: :ethereum)  # Fails: WebMock blocks net
end
```

### Compute authorization headers via `Privy::Authorization.prepare` — don't hand-roll signatures

For mutating methods (update, rpc, raw_sign, transfer), use the helper to canonicalize the payload (RFC 8785), sign with any keys / `sign_fns` in the `AuthorizationContext`, and compose `privy-authorization-signature`, `privy-idempotency-key`, and `privy-request-expiry` in one call.

DO:

```ruby
prepared = Privy::Authorization.prepare(
  privy_client,
  method: :patch,
  url: "#{api_base_url}v1/wallets/#{wallet_id}",
  body: params,
  authorization_context: authorization_context,
  idempotency_key: idempotency_key,
  request_expiry: request_expiry
)
params.merge!(prepared.headers.transform_keys { |k| k.tr("-", "_").to_sym })
```

DON'T build headers by hand:

```ruby
json = params.to_json
sig = OpenSSL::PKey.read(Base64.strict_decode64(pk)).sign("SHA256", json)
headers["privy-authorization-signature"] = Base64.strict_encode64(sig)
```
