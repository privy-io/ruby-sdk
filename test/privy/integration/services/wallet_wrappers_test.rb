# frozen_string_literal: true

require_relative "../integration_test_helper"

# Staging tests for the signed deposit account, payout, swap, and automation wrappers.
class Privy::Test::Integration::WalletWrappersTest < Privy::Test::IntegrationTest
  # Rejections must come from the request expiry check, not from another validation error.
  EXPIRY_ERROR = /expir/i
  SWAP_PARAMS = {
    base_amount: "1000000000000000000",
    source: {asset_address: "native", caip2: "eip155:8453"},
    destination: {asset_address: "0x0000000000000000000000000000000000000001", caip2: "eip155:8453"}
  }.freeze

  # --- automations -------------------------------------------------------------

  def test_attach_and_detach_automations_with_default_request_expiry
    wallet, ctx = create_key_owned_wallet
    automation_id = create_automation

    attached = client.wallets.attach_automations(
      wallet.id,
      wallet_attach_automations_params: attach_params(wallet, automation_id),
      authorization_context: ctx
    )
    assert_equal([automation_id], attached.data.map(&:automation_id))

    detached = client.wallets.detach_automations(
      wallet.id,
      wallet_detach_automations_params: {automation_ids: [automation_id]},
      authorization_context: ctx
    )
    assert_equal(true, detached.success)
  end

  def test_attach_automations_with_per_call_request_expiry
    wallet, ctx = create_key_owned_wallet
    automation_id = create_automation

    attached = client.wallets.attach_automations(
      wallet.id,
      wallet_attach_automations_params: attach_params(wallet, automation_id),
      authorization_context: ctx,
      request_expiry: Privy::PrivyClient.request_expiry_from_now(20 * 60 * 1_000)
    )
    assert_equal([automation_id], attached.data.map(&:automation_id))
  end

  def test_attach_automations_rejects_expired_request_expiry
    wallet, ctx = create_key_owned_wallet
    automation_id = create_automation

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.attach_automations(
        wallet.id,
        wallet_attach_automations_params: attach_params(wallet, automation_id),
        authorization_context: ctx,
        request_expiry: Privy::PrivyClient.request_expiry_from_now(-60_000)
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  # --- deposit accounts ----------------------------------------------------------

  def test_create_crypto_deposit_account_with_default_request_expiry
    wallet_id, ctx = create_user_owned_wallet_with_context

    response = client.wallets.deposit_accounts.crypto.create(
      wallet_id,
      create_crypto_deposit_account_request_body: deposit_account_body,
      authorization_context: ctx
    )
    refute_empty(response.deposit_accounts)
  end

  def test_create_crypto_deposit_account_rejects_expired_request_expiry
    wallet_id, ctx = create_user_owned_wallet_with_context

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.deposit_accounts.crypto.create(
        wallet_id,
        create_crypto_deposit_account_request_body: deposit_account_body,
        authorization_context: ctx,
        request_expiry: Privy::PrivyClient.request_expiry_from_now(-60_000)
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  # --- payout and swap -----------------------------------------------------------

  def test_fiat_payout_rejects_expired_request_expiry
    skip("Skipped because a payout needs a funded wallet and a linked bank account")
    wallet, ctx = create_key_owned_wallet

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.payout.fiat.create(
        wallet.id,
        fiat_payout_params: {
          source: {asset: "usdc", amount: "10", chain: "base"},
          destination: {external_account_id: "external-account-id"}
        },
        authorization_context: ctx,
        request_expiry: Privy::PrivyClient.request_expiry_from_now(-60_000)
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  def test_swap_quote_with_per_call_request_expiry
    skip("Skipped because the staging wallet is unfunded, so swaps cannot run")
    wallet, ctx = create_key_owned_wallet

    quote = client.wallets.swap.quote(
      wallet.id,
      swap_quote_params: SWAP_PARAMS.merge(amount_type: :exact_input),
      authorization_context: ctx,
      request_expiry: Privy::PrivyClient.request_expiry_from_now(20 * 60 * 1_000)
    )
    refute_nil(quote)
  end

  def test_swap_execute_rejects_expired_request_expiry
    skip("Skipped because the staging wallet is unfunded, so swaps cannot run")
    wallet, ctx = create_key_owned_wallet

    error = assert_raises(Privy::Errors::APIStatusError) do
      client.wallets.swap.execute(
        wallet.id,
        swap_execute_params: SWAP_PARAMS,
        authorization_context: ctx,
        request_expiry: Privy::PrivyClient.request_expiry_from_now(-60_000)
      )
    end
    assert_match(EXPIRY_ERROR, error.message)
  end

  private

  def create_key_owned_wallet
    kp = Privy::Cryptography.generate_p256_key_pair
    wallet = client.wallets.create(
      wallet_create_params: {chain_type: :ethereum, owner: {public_key: kp.public_key}}
    )
    [wallet, Privy::Authorization::AuthorizationContext.build(authorization_private_keys: [kp.private_key])]
  end

  # Deposit accounts need a destination wallet that is 1-of-1 owned by a user.
  def create_user_owned_wallet_with_context
    skip("JWT_AUTH_SK not set") unless ENV["JWT_AUTH_SK"] && !ENV["JWT_AUTH_SK"].empty?

    wallet = create_user_owned_wallet
    [wallet.id, Privy::Authorization::AuthorizationContext.build(user_jwts: [generate_test_jwt])]
  end

  # Swap automations need a destination address for the swapped funds.
  def attach_params(wallet, automation_id)
    {automation_ids: [automation_id], params: {destination_address: wallet.address}}
  end

  def create_automation
    automation = client.api.wallet_automations.create(
      name: "ruby-sdk-request-expiry-#{Time.now.to_i}",
      owner_id: nil,
      config: {
        trigger: {type: :deposit, assets: {mode: :all}},
        action: {type: :swap, destination_chain_asset: {asset: "usdc", chain: "base"}}
      }
    )
    register_integration_cleanup { client.api.wallet_automations.delete(automation.id) }
    automation.id
  end

  def deposit_account_body
    {
      type: :inline_route,
      destination: {asset: "usdc", chain: "base"},
      # Base only: the staging app has no gas sponsorship on the other source chains.
      source: {mode: :include, values: [{asset: "usdc", chain: "base"}]}
    }
  end
end
