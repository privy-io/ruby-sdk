# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Organizations::KYBTest < Privy::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.organizations.kyb.list("organization_id")

    assert_pattern do
      response => Privy::KYBStatusListResponse
    end

    assert_pattern do
      response => {
        kyb_statuses: ^(Privy::Internal::Type::ArrayOf[Privy::KYBStatusResponse]),
        next_cursor: String | nil
      }
    end
  end

  def test_initiate_links_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.organizations.kyb.initiate_links(
        "organization_id",
        email: "dev@stainless.com",
        provider: :bridge
      )

    assert_pattern do
      response => Privy::KYBStatusResponse
    end

    assert_pattern do
      response => {
        capabilities: Privy::KyxCapabilities,
        endorsements: ^(Privy::Internal::Type::ArrayOf[Privy::KyxEndorsement]),
        environment: Privy::KyxEnvironment,
        future_requirements_due: ^(Privy::Internal::Type::ArrayOf[String]),
        kyb: Privy::KyxVerificationStatusDetail,
        provider: Privy::KyxProvider,
        requirements_due: ^(Privy::Internal::Type::ArrayOf[String]),
        status: String,
        tos: Privy::KyxTosStatusDetail
      }
    end
  end

  def test_initiate_tos_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.organizations.kyb.initiate_tos(
        "organization_id",
        email: "dev@stainless.com",
        provider: :bridge
      )

    assert_pattern do
      response => Privy::KyxTosResponse
    end

    assert_pattern do
      response => {
        environment: Privy::KyxEnvironment,
        link: String,
        provider: Privy::KyxProvider,
        status: String
      }
    end
  end
end
