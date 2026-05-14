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
end
