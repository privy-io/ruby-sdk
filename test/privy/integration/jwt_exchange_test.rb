# frozen_string_literal: true

require_relative "integration_test_helper"
require "openssl"
require "jwt"

class Privy::Test::Integration::JwtExchangeTest < Privy::Test::IntegrationTest
  def setup
    super
    skip("JWT_AUTH_SK not set") unless ENV["JWT_AUTH_SK"]
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

  private

  def jwt_auth_subject
    ENV.fetch("JWT_AUTH_SUBJECT", "java-sdk-sub-id")
  end

  def generate_test_jwt
    pem = ENV.fetch("JWT_AUTH_SK").gsub('\n', "\n")
    private_key = OpenSSL::PKey::RSA.new(pem)
    payload = {sub: jwt_auth_subject, exp: Time.now.to_i + 3600}
    JWT.encode(payload, private_key, "RS256", {typ: "JWT"})
  end
end
