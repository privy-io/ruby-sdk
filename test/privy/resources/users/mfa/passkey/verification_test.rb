# frozen_string_literal: true

require_relative "../../../../test_helper"

class Privy::Test::Resources::Users::Mfa::Passkey::VerificationTest < Privy::Test::ResourceTest
  def test_init_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.users.mfa.passkey.verification.init(
        "user_id",
        relying_party: "https://example.com",
        user_jwt: "x"
      )

    assert_pattern do
      response => Privy::Users::PasskeyMfaVerificationInitResponse
    end

    assert_pattern do
      response => {
        options: Privy::Users::MfaPasskeyAuthenticatorVerifyOptions
      }
    end
  end

  def test_verify_required_params
    skip("Mock server tests are disabled")

    response =
      @privy_api.users.mfa.passkey.verification.verify(
        "user_id",
        credential: {
          id: "id",
          client_extension_results: {},
          raw_id: "raw_id",
          response: {
            authenticator_data: "authenticator_data",
            client_data_json: "client_data_json",
            signature: "signature"
          },
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
