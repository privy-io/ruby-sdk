# frozen_string_literal: true

require_relative "../../test_helper"

class Privy::Test::Resources::Users::KYCTest < Privy::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @privy_api.users.kyc.list("user_id")

    assert_pattern do
      response => Privy::KYCStatusListResponse
    end

    assert_pattern do
      response => {
        kyc_statuses: ^(Privy::Internal::Type::ArrayOf[Privy::KYCStatusResponse]),
        next_cursor: String | nil
      }
    end
  end

  def test_initiate_links_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.kyc.initiate_links("user_id", provider: :bridge)

    assert_pattern do
      response => Privy::KYCStatusResponse
    end

    assert_pattern do
      response => {
        capabilities: Privy::KyxCapabilities,
        endorsements: ^(Privy::Internal::Type::ArrayOf[Privy::KyxEndorsement]),
        environment: Privy::KyxEnvironment,
        future_requirements_due: ^(Privy::Internal::Type::ArrayOf[String]),
        kyc: Privy::KyxVerificationStatusDetail,
        provider: Privy::KyxProvider,
        requirements_due: ^(Privy::Internal::Type::ArrayOf[String]),
        status: String,
        tos: Privy::KyxTosStatusDetail
      }
    end
  end

  def test_initiate_tos_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.kyc.initiate_tos("user_id", provider: :bridge)

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
