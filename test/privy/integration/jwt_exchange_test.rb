# frozen_string_literal: true

require_relative "integration_test_helper"

class Privy::Test::Integration::JwtExchangeTest < Privy::Test::IntegrationTest
  def setup
    super
    skip("JWT_AUTH_SK not set") unless ENV["JWT_AUTH_SK"] && !ENV["JWT_AUTH_SK"].empty?

    # /wallets/authenticate (which jwt_exchange wraps) rejects JWTs for users
    # that don't own any wallet. Ensure the freshly-minted user has one.
    create_user_owned_wallet
  end

  def test_exchange_jwt_returns_authorization_key
    jwt = generate_test_jwt
    key = client.jwt_exchange.exchange_jwt_for_authorization_key(jwt)

    refute_nil(key)
    assert_kind_of(String, key)
    decoded = Base64.strict_decode64(key)
    assert(decoded.length.positive?, "Decoded key should not be empty")
  end

  def test_exchange_jwt_caches_result
    jwt = generate_test_jwt
    first_result = client.jwt_exchange.exchange_jwt_for_authorization_key(jwt)
    second_result = client.jwt_exchange.exchange_jwt_for_authorization_key(jwt)

    assert_equal(first_result, second_result)
  end
end
