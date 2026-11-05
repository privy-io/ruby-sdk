# frozen_string_literal: true

require_relative "../../../test_helper"

class Privy::Test::Resources::Users::Earn::TmmfTest < Privy::Test::ResourceTest
  def test_get
    skip("Mock server tests are disabled")

    response = @privy_api.users.earn.tmmf.get("x")

    assert_pattern do
      response => Privy::Wallets::TmmfUserResponse
    end

    assert_pattern do
      response => {
        user_id: String,
        user_registrations: ^(Privy::Internal::Type::ArrayOf[Privy::Wallets::TmmfUserRegistration]),
        wallet_registrations: ^(Privy::Internal::Type::ArrayOf[Privy::Wallets::TmmfUserWalletResponse]),
        wallets_next_cursor: String | nil
      }
    end
  end
end
