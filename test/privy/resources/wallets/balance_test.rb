# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Wallets::BalanceTest < Privy::Test::ResourceTest
  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.wallets.balance.get("wallet_id")

    assert_pattern do
      response => Privy::Models::Wallets::BalanceGetResponse
    end

    assert_pattern do
      response => {
        balances: ^(Privy::Internal::Type::ArrayOf[Privy::Models::Wallets::BalanceGetResponse::Balance])
      }
    end
  end
end
