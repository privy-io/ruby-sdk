# Ruby SDK

Ruby SDK for the Privy API. Stainless-generated core with a hand-authored `Privy::PrivyClient` and services layer composed on top.

## Commands

```sh
./scripts/bootstrap                                      # install dependencies
./scripts/format                                         # format Ruby, RBI, and RBS files
./scripts/lint                                           # RuboCop and type checks
./scripts/test                                           # offline unit tests
TEST=test/privy/public_api/services/wallets_test.rb ./scripts/test # focused unit test
bundle exec rake test:integration                        # live staging tests; requires .env
PRIVY_LOG_HTTP=1 bundle exec rake test:integration       # live tests with HTTP traces
```

Run `./scripts/format`, `./scripts/lint`, and the smallest relevant test set before finishing.

HTTP traces contain sensitive headers. The `Authorization` value can be decoded into the app ID and app secret. Never paste traces into issues or retain them in shared CI logs.

## Directory Structure

```
lib/privy.rb                       # top-level require graph; custom requires at the bottom
lib/privy/client.rb                # GENERATED top-level API client
lib/privy/resources/ models/ internal/   # GENERATED services, model shapes, and transport
lib/privy/public_api/              # CUSTOM PrivyClient and service wrappers
lib/privy/authorization/           # CUSTOM signing, canonicalization, AuthorizationContext
test/privy/**/*_test.rb            # offline unit tests; WebMock blocks network
test/privy/integration/            # live staging tests
.env                               # gitignored TEST_APP_ID, TEST_APP_SECRET, optional TEST_API_URL
```

## Key Patterns

### Put new code under `public_api/` or `authorization/`—avoid generated files

Stainless regenerates the core and merges regenerated versions back into the repository. Custom logic belongs in `lib/privy/public_api/` or `lib/privy/authorization/` unless there is no extension point.

DO add a wrapper:

```ruby
# lib/privy/public_api/services/wallets.rb
class Privy::Services::Wallets < Privy::Resources::Wallets
  def create(params = {}); end
end
```

DON'T modify a generated resource when a wrapper works:

```ruby
# lib/privy/resources/wallets.rb — GENERATED
def create(params); end
```

Generated edits can conflict on the next regeneration and leave custom behavior separated from the public extension layer.

### Custom services subclass generated resources and call `super`

Services under `public_api/services/` inherit from matching `Privy::Resources::*` classes. Override only methods that need Privy-specific headers or options. Constructors receive both the generated `client:` and custom `privy_client:`.

```ruby
class Privy::Services::Wallets < Privy::Resources::Wallets
  attr_reader :privy_client

  def initialize(client:, privy_client:)
    super(client: client)
    @privy_client = privy_client
  end

  def update(wallet_id, params = {})
    # Prepare custom headers.
    super(wallet_id, params)
  end
end
```

Do not duplicate generated paths, serialization, retries, or response parsing. Delegate to `super`.

### Register custom files in the require graph

This repository does not use Zeitwerk. Add every new custom file to the explicit `require_relative` list at the bottom of `lib/privy.rb`. Load dependencies before files that reference them.

### Keep flat public class names

Directory names do not introduce Ruby namespaces. A file at `lib/privy/public_api/privy_client.rb` declares `Privy::PrivyClient`, not `Privy::PublicApi::PrivyClient`. Authorization classes similarly live directly under `Privy::*` unless neighboring files show otherwise.

### Prepare authorization through `Privy::Authorization`

For authorized mutations, use `Privy::Authorization.prepare_request`. It canonicalizes the payload, signs with keys or callbacks from `AuthorizationContext`, and composes authorization, idempotency, and request-expiry headers.

```ruby
prepared = Privy::Authorization.prepare_request(
  privy_client,
  method: :patch,
  url: Privy::Authorization.signed_url(privy_client, "v1/wallets/#{wallet_id}"),
  body: params,
  authorization_context: authorization_context,
  idempotency_key: idempotency_key,
  request_expiry: request_expiry
)
```

Do not hand-roll JSON canonicalization, signatures, or authorization headers inside a service.

### Separate offline and live tests

`test/privy/test_helper.rb` blocks network access with WebMock. Put mocked unit tests under `test/privy/`. Put live tests only under `test/privy/integration/` and inherit from `Privy::Test::IntegrationTest`; it enables network access for each test and skips when credentials are absent.

Integration tests must create the resources they need and target staging. Use support helpers for JWTs and wallet entropy. Never point them at production.

## Pull Requests

Use a Conventional Commit title. Keep generated API updates separate from handwritten service changes when possible.
