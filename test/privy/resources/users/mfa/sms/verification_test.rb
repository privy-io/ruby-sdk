# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Users::Mfa::SMS::VerificationTest < Privy::Test::ResourceTest
  def test_init_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.mfa.sms.verification.init("user_id", privy_user_token: "x")

    assert_pattern do
      response => Privy::SuccessResponse
    end

    assert_pattern do
      response => {
        success: Privy::Internal::Type::Boolean
      }
    end
  end

  def test_verify_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.mfa.sms.verification.verify("user_id", code: "xxxxxx", privy_user_token: "x")

    assert_pattern do
      response => Privy::Users::MfaVerificationResponse
    end

    assert_pattern do
      response => {
        token: String,
        expires_at: Integer,
        user: Privy::User
      }
    end
  end
end
