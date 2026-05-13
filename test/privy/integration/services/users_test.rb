# frozen_string_literal: true

require_relative "../integration_test_helper"

class Privy::Test::Integration::UsersTest < Privy::Test::IntegrationTest
  def test_create_user_with_custom_auth_and_pregenerated_ethereum_wallet
    custom_user_id = "test-user-#{Time.now.to_f.to_s.tr('.', '-')}"

    user = client.users.create(
      user_create_params: {
        linked_accounts: [{custom_user_id: custom_user_id, type: :custom_auth}],
        wallets: [{chain_type: :ethereum}]
      }
    )

    refute_nil(user.id, "expected user.id to be set")

    custom_auth = user.linked_accounts.find { |a| a.type == :custom_auth }
    refute_nil(custom_auth, "expected to find custom_auth linked account")
    assert_equal(custom_user_id, custom_auth.custom_user_id)

    wallet = user.linked_accounts.find { |a| a.type == :wallet }
    refute_nil(wallet, "expected to find wallet linked account")
    assert_equal(:ethereum, wallet.chain_type)
    refute_nil(wallet.address, "expected wallet.address to be set")
    assert_match(/^0x[a-fA-F0-9]{40}$/, wallet.address)
  ensure
    client.users.delete(user.id) if user&.id
  end
end
