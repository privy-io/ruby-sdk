# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Wallets::TransactionsTest < Privy::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.transactions.get("wallet_id", chain: :ethereum)

    assert_pattern do
      response => Privy::Models::Wallets::TransactionGetResponse
    end

    assert_pattern do
      response => {
        next_cursor: String | nil,
        transactions: ^(Privy::Internal::Type::ArrayOf[Privy::Models::Wallets::TransactionGetResponse::Transaction])
      }
    end
  end
end
