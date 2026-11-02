# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Users::Mfa::Passkey::EnrollmentTest < Privy::Test::ResourceTest
  def test_init_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.users.mfa.passkey.enrollment.init(
        "user_id",
        relying_party: "https://example.com",
        user_jwt: "x"
      )

    assert_pattern do
      response => Privy::Users::PasskeyMfaEnrollmentInitResponse
    end

    assert_pattern do
      response => {
        options: Privy::Users::MfaPasskeyAuthenticatorEnrollmentOptions
      }
    end
  end

  def test_verify_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.users.mfa.passkey.enrollment.verify(
        "user_id",
        credential: {
          id: "id",
          client_extension_results: {},
          raw_id: "raw_id",
          response: {attestation_object: "attestation_object", client_data_json: "client_data_json"},
          type: :"public-key"
        },
        user_jwt: "x"
      )

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
