# frozen_string_literal: true

require_relative "../integration_test_helper"

# Contract tests for the custom earn service.
#
# These exercise the public surface of `client.wallets.earn.ethereum.{deposit,
# withdraw,incentive.claim}` against the live API. They are skipped by default
# because each call would move real funds (deposit/withdraw) or claim real
# incentive rewards from a vault we don't own. Their value is structural: when
# unskipped against a configured vault, they verify the wrapper passes the
# right body, signs the right URL, and decodes the response shape the SDK
# expects.
#
# To run any of them, set the matching env var to a vault ID in the test app
# (and any required preconditions like a funded wallet):
#
#   EARN_TEST_VAULT_ID=vault-... bundle exec rake test:integration \
#     TEST=test/privy/integration/services/earn_test.rb
class Privy::Test::Integration::EarnTest < Privy::Test::IntegrationTest
  EARN_TEST_VAULT_ID_ENV = "EARN_TEST_VAULT_ID"
  EARN_TEST_INCENTIVE_CHAIN = "base"

  def vault_id_or_skip
    vault_id = ENV[EARN_TEST_VAULT_ID_ENV]
    skip("#{EARN_TEST_VAULT_ID_ENV} not set") if vault_id.nil? || vault_id.empty?
    vault_id
  end

  def test_wallets_earn_exposes_custom_services
    earn = client.wallets.earn

    assert_instance_of(Privy::Services::Earn, earn)
    assert_instance_of(Privy::Services::Earn::Ethereum, earn.ethereum)
    assert_instance_of(Privy::Services::Earn::Ethereum::Incentive, earn.ethereum.incentive)
  end

  def test_deposit_on_p256_owned_wallet_returns_action_response
    skip("Skipped to avoid moving real funds; set #{EARN_TEST_VAULT_ID_ENV} and unskip to run")

    vault_id = vault_id_or_skip
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    response = client.wallets.earn.ethereum.deposit(
      wallet.id,
      earn_deposit_params: {vault_id: vault_id, amount: "0.01"},
      authorization_context: ctx
    )

    refute_nil(response.id)
    refute_nil(response.status)
    assert_equal(:earn_deposit, response.type)
  end

  def test_withdraw_on_p256_owned_wallet_returns_action_response
    skip("Skipped to avoid moving real funds; set #{EARN_TEST_VAULT_ID_ENV} and unskip to run")

    vault_id = vault_id_or_skip
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    response = client.wallets.earn.ethereum.withdraw(
      wallet.id,
      earn_withdraw_params: {vault_id: vault_id, raw_amount: "1000000"},
      authorization_context: ctx
    )

    refute_nil(response.id)
    refute_nil(response.status)
    assert_equal(:earn_withdraw, response.type)
  end

  def test_incentive_claim_on_p256_owned_wallet_returns_action_response
    skip("Skipped to avoid claiming real incentive rewards; unskip to run against a funded wallet")

    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )

    response = client.wallets.earn.ethereum.incentive.claim(
      wallet.id,
      earn_incentive_claim_params: {chain: EARN_TEST_INCENTIVE_CHAIN},
      authorization_context: ctx
    )

    refute_nil(response.id)
    refute_nil(response.status)
    assert_equal(:earn_incentive_claim, response.type)
  end

  def test_deposit_with_idempotency_key_round_trips
    skip("Skipped to avoid moving real funds; set #{EARN_TEST_VAULT_ID_ENV} and unskip to run")

    vault_id = vault_id_or_skip
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {
        chain_type: :ethereum,
        owner: {public_key: kp.public_key}
      }
    )

    ctx = Privy::Authorization::AuthorizationContext.build(
      authorization_private_keys: [kp.private_key]
    )
    idempotency_key = "earn-deposit-#{SecureRandom.uuid}"

    first = client.wallets.earn.ethereum.deposit(
      wallet.id,
      earn_deposit_params: {vault_id: vault_id, amount: "0.01"},
      authorization_context: ctx,
      idempotency_key: idempotency_key
    )

    repeat = client.wallets.earn.ethereum.deposit(
      wallet.id,
      earn_deposit_params: {vault_id: vault_id, amount: "0.01"},
      authorization_context: ctx,
      idempotency_key: idempotency_key
    )

    assert_equal(
      first.id,
      repeat.id,
      "expected the second call with same idempotency key to return same action"
    )
  end
end
