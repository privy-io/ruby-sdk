# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Users::Mfa::Totp::VerificationTest < Privy::Test::ResourceTest
  def test_verify_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.users.mfa.totp.verification.verify("user_id", code: "xxxxxx", privy_user_token: "x")

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
