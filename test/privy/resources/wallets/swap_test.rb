# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Wallets::SwapTest < Privy::Test::ResourceTest
  def test_execute_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.swap.execute(
        "wallet_id",
        base_amount: "1000000000000000000",
        destination: {asset_address: "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48"},
        source: {asset_address: "native", caip2: "eip155:1"}
      )

    assert_pattern do
      response => Privy::SwapActionResponse
    end

    assert_pattern do
      response => {
        id: String,
        caip2: String,
        created_at: Time,
        input_amount: String | nil,
        input_token: String,
        output_amount: String | nil,
        output_token: String,
        status: Privy::WalletActionStatus,
        type: Privy::SwapActionResponse::Type,
        wallet_id: String,
        destination_address: String | nil,
        destination_caip2: String | nil,
        estimated_fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        estimated_gas: Privy::Gas | nil,
        failure_reason: Privy::FailureReason | nil,
        fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        gas: Privy::Gas | nil,
        steps: ^(Privy::Internal::Type::ArrayOf[union: Privy::WalletActionStep]) | nil
      }
    end
  end

  def test_quote_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.wallets.swap.quote(
        "wallet_id",
        base_amount: "1000000000000000000",
        destination: {asset_address: "0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48"},
        source: {asset_address: "native", caip2: "eip155:1"}
      )

    assert_pattern do
      response => Privy::SwapQuoteResponse
    end

    assert_pattern do
      response => {
        caip2: String,
        est_output_amount: String,
        gas_estimate: String,
        input_amount: String,
        input_token: String,
        minimum_output_amount: String,
        output_token: String,
        destination_caip2: String | nil,
        estimated_fees: ^(Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem]) | nil,
        estimated_gas: Privy::Gas | nil,
        expires_at: Float | nil
      }
    end
  end
end
