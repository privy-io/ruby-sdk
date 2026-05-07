# frozen_string_literal: true

require_relative "../test_helper"

class Privy::Test::Resources::TransactionsTest < Privy::Test::ResourceTest
  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.transactions.get("transaction_id")

    assert_pattern do
      response => Privy::Transaction
    end

    assert_pattern do
      response => {
        id: String,
        caip2: String,
        created_at: Float,
        status: Privy::Transaction::Status,
        transaction_hash: String | nil,
        wallet_id: String,
        reference_id: String | nil,
        sponsored: Privy::Internal::Type::Boolean | nil,
        user_operation_hash: String | nil
      }
    end
  end
end
