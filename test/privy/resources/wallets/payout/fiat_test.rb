# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Wallets::Payout::FiatTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.payout.fiat.create(
        "wallet_id",
        destination: {fiat_account_id: "fiat_account_id"},
        source: {amount: "amount", asset: "asset", chain: "chain"}
      )

    assert_pattern do
      response => Privy::Wallets::PayoutResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        destination: Privy::PayoutDestination,
        environment: Privy::Environment,
        provider: Privy::OrchestrationProvider,
        source: Privy::PayoutSource,
        status: Privy::Wallets::WalletActionStatus,
        type: Privy::Wallets::PayoutResponse::Type,
        wallet_id: String,
        failure_reason: Privy::Wallets::FailureReason | nil,
        reference_id: String | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::Wallets::WalletActionStep]) | nil
      }
    end
  end
end
