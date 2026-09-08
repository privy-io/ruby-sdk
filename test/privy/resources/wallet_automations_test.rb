# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::WalletAutomationsTest < Privy::Test::ResourceTest
  def test_reindex_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallet_automations.reindex(asset_address: "x")

    assert_pattern do
      response => Privy::WalletAutomationReindexResponse
    end

    assert_pattern do
      response => {
        results: ^(Privy::Internal::Type::ArrayOf[Privy::WalletAutomationReindexAssetResult]),
        wallet_id: String
      }
    end
  end
end
