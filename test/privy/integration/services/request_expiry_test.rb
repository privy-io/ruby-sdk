# frozen_string_literal: true

require_relative "../integration_test_helper"

class Privy::Test::Integration::RequestExpiryTest < Privy::Test::IntegrationTest
  def test_default_request_expiry_round_trips
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {chain_type: :ethereum, owner: {public_key: kp.public_key}}
    )
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])

    updated = client.wallets.update(
      wallet.id,
      wallet_update_params: {display_name: "ruby-sdk-expiry-default-#{Time.now.to_i}"},
      authorization_context: ctx
    )
    refute_nil(updated.id)
  end

  def test_per_call_request_expiry_round_trips
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {chain_type: :ethereum, owner: {public_key: kp.public_key}}
    )
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])

    expiry = Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond) + (5 * 60 * 1_000)
    updated = client.wallets.update(
      wallet.id,
      wallet_update_params: {display_name: "ruby-sdk-expiry-explicit-#{Time.now.to_i}"},
      authorization_context: ctx,
      request_expiry: expiry
    )
    refute_nil(updated.id)
  end

  def test_disabled_request_expiry_round_trips
    disabled_client = Privy::PrivyClient.new(
      app_id: Privy::Test::IntegrationConfig.app_id,
      app_secret: Privy::Test::IntegrationConfig.app_secret,
      base_url: Privy::Test::IntegrationConfig.api_url,
      request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true)
    )

    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = disabled_client.wallets.create(
      wallet_create_params: {chain_type: :ethereum, owner: {public_key: kp.public_key}}
    )
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])

    updated = disabled_client.wallets.update(
      wallet.id,
      wallet_update_params: {display_name: "ruby-sdk-expiry-disabled-#{Time.now.to_i}"},
      authorization_context: ctx
    )
    refute_nil(updated.id)
  end

  def test_expired_request_is_rejected
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {chain_type: :ethereum, owner: {public_key: kp.public_key}}
    )
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])

    expired = Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond) - 60_000

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.update(
        wallet.id,
        wallet_update_params: {display_name: "ruby-sdk-expiry-expired-#{Time.now.to_i}"},
        authorization_context: ctx,
        request_expiry: expired
      )
    end
    refute_nil(error.message)
  end

  # --- raw_sign ---------------------------------------------------------------

  RAW_SIGN_HASH = "0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
  # Rejections must come from the request expiry check, not from another validation error.
  EXPIRY_ERROR = /expir/i

  def test_raw_sign_accepts_default_request_expiry
    wallet_id, ctx = create_raw_sign_wallet

    response = client.wallets.raw_sign(
      wallet_id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
      authorization_context: ctx
    )
    refute_nil(response.data.signature)
  end

  def test_raw_sign_accepts_per_call_request_expiry
    wallet_id, ctx = create_raw_sign_wallet

    response = client.wallets.raw_sign(
      wallet_id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
      authorization_context: ctx,
      request_expiry: Privy::PrivyClient.request_expiry_from_now(20 * 60 * 1_000)
    )
    refute_nil(response.data.signature)
  end

  def test_raw_sign_rejects_expired_request_expiry
    wallet_id, ctx = create_raw_sign_wallet

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.raw_sign(
        wallet_id,
        raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
        authorization_context: ctx,
        request_expiry: Privy::PrivyClient.request_expiry_from_now(-60_000)
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  def test_raw_sign_rejects_request_expiry_of_zero
    wallet_id, ctx = create_raw_sign_wallet

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.raw_sign(
        wallet_id,
        raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
        authorization_context: ctx,
        request_expiry: 0
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  def test_disabled_client_raw_sign_accepts_request_without_expiry
    wallet_id, ctx = create_raw_sign_wallet

    response = disabled_client.wallets.raw_sign(
      wallet_id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
      authorization_context: ctx
    )
    refute_nil(response.data.signature)
  end

  # Without a client default, the request only fails if the per-call 0 is sent as the header.
  def test_disabled_client_still_sends_request_expiry_of_zero
    wallet_id, ctx = create_raw_sign_wallet

    error = assert_raises(Privy::Errors::APIStatusError) do
      disabled_client.wallets.raw_sign(
        wallet_id,
        raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
        authorization_context: ctx,
        request_expiry: 0
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  private

  # raw_sign does not support ethereum or solana wallets, so use tron (as in wallets_test.rb).
  def create_raw_sign_wallet
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {chain_type: :tron, owner: {public_key: kp.public_key}}
    )
    [
      wallet.id,
      Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])
    ]
  end

  def disabled_client
    @disabled_client ||= Privy::PrivyClient.new(
      app_id: Privy::Test::IntegrationConfig.app_id,
      app_secret: Privy::Test::IntegrationConfig.app_secret,
      base_url: Privy::Test::IntegrationConfig.api_url,
      request_expiry: Privy::PrivyRequestExpiryOptions.build(disabled: true)
    )
  end
end
