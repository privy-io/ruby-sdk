# frozen_string_literal: true

require_relative "../test_helper"

class Privy::AuthorizationTest < Minitest::Test
  def setup
    @kp = Privy::Cryptography.generate_p256_key_pair
    @privy_client = Struct.new(:app_id).new("app-abc")
  end

  def test_prepare_with_no_context_returns_no_sig_header
    prepared = Privy::Authorization.prepare(
      @privy_client,
      method: :patch,
      url: "https://api.privy.io/v1/wallets/w-1",
      body: {display_name: "test"},
      authorization_context: nil
    )
    refute(prepared.headers.key?("privy-authorization-signature"))
  end

  def test_prepare_with_private_key_signs_and_includes_expiry
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [@kp.private_key])
    prepared = Privy::Authorization.prepare(
      @privy_client,
      method: :patch,
      url: "https://api.privy.io/v1/wallets/w-1",
      body: {display_name: "test"},
      authorization_context: ctx,
      request_expiry: 1_750_000_000_000
    )
    assert(prepared.headers["privy-authorization-signature"])
    assert_equal("1750000000000", prepared.headers["privy-request-expiry"])
  end

  def test_prepare_passes_through_precomputed_signatures
    ctx = Privy::Authorization::AuthorizationContext.build(signatures: %w[sig1 sig2])
    prepared = Privy::Authorization.prepare(
      @privy_client,
      method: :post,
      url: "https://api.privy.io/v1/foo",
      body: {},
      authorization_context: ctx
    )
    assert_equal("sig1,sig2", prepared.headers["privy-authorization-signature"])
  end

  def test_prepare_calls_sign_fns_with_canonical_payload
    captured = nil
    ctx = Privy::Authorization::AuthorizationContext.build(
      sign_fns: [
        ->(payload) {
          captured = payload
          "fn-sig"
        }
      ]
    )
    prepared = Privy::Authorization.prepare(
      @privy_client,
      method: :post,
      url: "https://api.privy.io/v1/foo",
      body: {key: "value"},
      authorization_context: ctx
    )
    assert_equal("fn-sig", prepared.headers["privy-authorization-signature"])
    assert_includes(captured, '"key":"value"')
  end
end
