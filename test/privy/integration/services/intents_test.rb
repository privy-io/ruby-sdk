# frozen_string_literal: true

require_relative "../integration_test_helper"

# Staging tests for the request expiry that client.intents sends.
class Privy::Test::Integration::IntentsTest < Privy::Test::IntegrationTest
  RAW_SIGN_HASH = "0x1234567890abcdef1234567890abcdef1234567890abcdef1234567890abcdef"
  TOLERANCE_MS = 5 * 60 * 1_000
  # Rejections must come from the request expiry check, not from another validation error.
  EXPIRY_ERROR = /expir/i

  def test_raw_sign_defaults_to_72_hour_intent_expiry
    wallet_id = create_key_owned_wallet

    before = now_ms
    intent = client.intents.raw_sign(wallet_id, raw_sign_input: {params: {hash: RAW_SIGN_HASH}})
    after = now_ms

    assert_equal(:RAW_SIGN, intent.intent_type)
    assert_default_intent_expiry(intent, before, after)
  end

  def test_raw_sign_uses_per_call_request_expiry
    wallet_id = create_key_owned_wallet
    expiry = Privy::PrivyClient.request_expiry_from_now(60 * 60 * 1_000)

    intent = client.intents.raw_sign(
      wallet_id,
      raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
      request_expiry: expiry
    )

    assert_equal(true, intent.custom_expiry)
    assert_in_delta(expiry, expires_at_ms(intent), TOLERANCE_MS)
  end

  def test_raw_sign_rejects_expired_request_expiry
    wallet_id = create_key_owned_wallet

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.intents.raw_sign(
        wallet_id,
        raw_sign_input: {params: {hash: RAW_SIGN_HASH}},
        request_expiry: Privy::PrivyClient.request_expiry_from_now(-60_000)
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  def test_update_wallet_defaults_to_72_hour_intent_expiry
    wallet_id = create_key_owned_wallet

    before = now_ms
    intent = client.intents.update_wallet(
      wallet_id,
      wallet_update_params: {display_name: "ruby-sdk-intent-expiry-#{Time.now.to_i}"}
    )
    after = now_ms

    assert_default_intent_expiry(intent, before, after)
  end

  def test_transfer_defaults_to_72_hour_intent_expiry
    skip("Skipped because the staging wallet is unfunded, so transfer intents fail with insufficient balance")
    wallet_id = create_key_owned_wallet

    before = now_ms
    intent = client.intents.transfer(
      wallet_id,
      wallet_transfer_params: {
        source: {asset: "usdc", amount: "0.01", chain: "base"},
        destination: {address: "0xB00F0759DbeeF5E543Cc3E3B07A6442F5f3928a2"}
      }
    )
    after = now_ms

    assert_default_intent_expiry(intent, before, after)
  end

  def test_delete_policy_defaults_to_72_hour_intent_expiry
    policy_id = create_key_owned_policy

    before = now_ms
    intent = client.intents.delete_policy(policy_id)
    after = now_ms

    assert_equal(:POLICY, intent.intent_type)
    assert_equal(true, intent.custom_expiry)
    assert_default_intent_expiry(intent, before, after)
  end

  def test_delete_policy_uses_per_call_request_expiry
    policy_id = create_key_owned_policy
    expiry = Privy::PrivyClient.request_expiry_from_now(60 * 60 * 1_000)

    intent = client.intents.delete_policy(policy_id, request_expiry: expiry)

    assert_equal(true, intent.custom_expiry)
    assert_in_delta(expiry, expires_at_ms(intent), TOLERANCE_MS)
  end

  def test_delete_key_quorum_defaults_to_72_hour_intent_expiry
    key_quorum_id = create_key_quorum

    before = now_ms
    intent = client.intents.delete_key_quorum(key_quorum_id)
    after = now_ms

    assert_equal(:KEY_QUORUM, intent.intent_type)
    assert_equal(true, intent.custom_expiry)
    assert_default_intent_expiry(intent, before, after)
  end

  def test_delete_key_quorum_uses_per_call_request_expiry
    key_quorum_id = create_key_quorum
    expiry = Privy::PrivyClient.request_expiry_from_now(60 * 60 * 1_000)

    intent = client.intents.delete_key_quorum(key_quorum_id, request_expiry: expiry)

    assert_equal(true, intent.custom_expiry)
    assert_in_delta(expiry, expires_at_ms(intent), TOLERANCE_MS)
  end

  def test_condition_set_item_intents_use_request_expiry
    skip("Skipped because these intents need an existing condition set, which the staging app does not have")
    expiry = Privy::PrivyClient.request_expiry_from_now(60 * 60 * 1_000)

    intent = client.intents.create_condition_set_items(
      "condition-set-id",
      condition_set_items_request_body: [{value: "0xB00F0759DbeeF5E543Cc3E3B07A6442F5f3928a2"}],
      request_expiry: expiry
    )

    assert_equal(true, intent.custom_expiry)
  end

  private

  def now_ms
    Process.clock_gettime(Process::CLOCK_REALTIME, :millisecond)
  end

  # raw_sign does not support ethereum or solana wallets, so use tron (as in wallets_test.rb).
  def create_key_owned_wallet
    kp = Privy::Cryptography.generate_p256_key_pair
    client.wallets.create(
      wallet_create_params: {chain_type: :tron, owner: {public_key: kp.public_key}}
    ).id
  end

  def create_key_owned_policy
    kp = Privy::Cryptography.generate_p256_key_pair
    policy = client.policies.create(
      policy_create_params: {
        version: "1.0",
        name: "ruby-sdk-intent-expiry-#{Time.now.to_i}",
        chain_type: "ethereum",
        rules: [],
        owner: {public_key: kp.public_key}
      }
    )
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])
    register_integration_cleanup { client.policies.delete(policy.id, authorization_context: ctx) }
    policy.id
  end

  def create_key_quorum
    kp = Privy::Cryptography.generate_p256_key_pair
    key_quorum = client.key_quorums.create(
      key_quorum_create_params: {public_keys: [kp.public_key], authorization_threshold: 1}
    )
    ctx = Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])
    register_integration_cleanup { client.key_quorums.delete(key_quorum.id, authorization_context: ctx) }
    key_quorum.id
  end

  # `expires_at` is a Unix timestamp; accept seconds or milliseconds.
  def expires_at_ms(intent)
    intent.expires_at < 1e12 ? intent.expires_at * 1_000 : intent.expires_at
  end

  def assert_default_intent_expiry(intent, before, after)
    expires_at = expires_at_ms(intent)
    assert_operator(
      expires_at,
      :>=,
      before + Privy::PrivyClient::DEFAULT_INTENT_REQUEST_EXPIRY_MS - TOLERANCE_MS
    )
    assert_operator(
      expires_at,
      :<=,
      after + Privy::PrivyClient::DEFAULT_INTENT_REQUEST_EXPIRY_MS + TOLERANCE_MS
    )
  end
end
