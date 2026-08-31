# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Users::ExternalFiatAccountsTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.users.external_fiat_accounts.create(
        "user_id",
        account: {account_number: "x", routing_number: "xxxxxxxxx", type: :us},
        account_owner_name: "xxx",
        currency: "currency",
        provider: :bridge
      )

    assert_pattern do
      response => Privy::ExternalFiatAccountResponse
    end

    assert_pattern do
      response => {
        external_fiat_account: Privy::ExternalFiatAccount
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.external_fiat_accounts.list("user_id", provider: :bridge)

    assert_pattern do
      response => Privy::ListExternalFiatAccountsResponse
    end

    assert_pattern do
      response => {
        external_fiat_accounts: ^(Privy::Internal::Type::ArrayOf[Privy::ExternalFiatAccount]),
        next_cursor: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.external_fiat_accounts.delete("account_id", user_id: "user_id")

    assert_pattern do
      response => Privy::SuccessResponse
    end

    assert_pattern do
      response => {
        success: Privy::Internal::Type::Boolean
      }
    end
  end

  def test_get_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.external_fiat_accounts.get("account_id", user_id: "user_id")

    assert_pattern do
      response => Privy::ExternalFiatAccountResponse
    end

    assert_pattern do
      response => {
        external_fiat_account: Privy::ExternalFiatAccount
      }
    end
  end
end
