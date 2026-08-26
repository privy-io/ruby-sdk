# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Organizations::ExternalFiatAccountsTest < Privy::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.organizations.external_fiat_accounts.create(
        "organization_id",
        account: {account_number: "x", routing_number: "xxxxxxxxx", type: :us},
        account_owner_name: "xxx",
        currency: "currency",
        provider: :bridge
      )

    assert_pattern do
      response => Privy::OrganizationExternalFiatAccountResponse
    end

    assert_pattern do
      response => {
        external_fiat_account: Privy::OrganizationExternalFiatAccount
      }
    end
  end

  def test_list_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.external_fiat_accounts.list("organization_id", provider: :bridge)

    assert_pattern do
      response => Privy::ListOrganizationExternalFiatAccountsResponse
    end

    assert_pattern do
      response => {
        accounts: ^(Privy::Internal::Type::ArrayOf[Privy::OrganizationExternalFiatAccount]),
        next_cursor: String | nil
      }
    end
  end

  def test_delete_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.organizations.external_fiat_accounts.delete("account_id", organization_id: "organization_id")

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

    response =
      @privy_api.organizations.external_fiat_accounts.get("account_id", organization_id: "organization_id")

    assert_pattern do
      response => Privy::OrganizationExternalFiatAccountResponse
    end

    assert_pattern do
      response => {
        external_fiat_account: Privy::OrganizationExternalFiatAccount
      }
    end
  end
end
