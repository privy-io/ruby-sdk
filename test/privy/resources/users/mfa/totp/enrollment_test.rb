# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Users::Mfa::Totp::EnrollmentTest < Privy::Test::ResourceTest
  def test_init_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.mfa.totp.enrollment.init("user_id", privy_user_token: "x")

    assert_pattern do
      response => Privy::Users::TotpMfaEnrollmentInitResponse
    end

    assert_pattern do
      response => {
        options: Privy::Users::TotpMfaEnrollmentOptions
      }
    end
  end

  def test_verify_required_params
    skip("Mock server tests are disabled")

    response = @privy_api.users.mfa.totp.enrollment.verify("user_id", code: "xxxxxx", privy_user_token: "x")

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
