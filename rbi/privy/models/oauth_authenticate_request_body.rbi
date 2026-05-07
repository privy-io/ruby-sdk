# typed: strong

module Privy
  module Models
    class OAuthAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthAuthenticateRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :authorization_code

      sig { returns(String) }
      attr_accessor :state_code

      # The type of OAuth authorization code.
      sig { returns(T.nilable(Privy::OAuthCodeType::OrSymbol)) }
      attr_reader :code_type

      sig { params(code_type: Privy::OAuthCodeType::OrSymbol).void }
      attr_writer :code_type

      sig { returns(T.nilable(String)) }
      attr_reader :code_verifier

      sig { params(code_verifier: String).void }
      attr_writer :code_verifier

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      # The request body for authenticating an OAuth account.
      sig do
        params(
          authorization_code: String,
          state_code: String,
          code_type: Privy::OAuthCodeType::OrSymbol,
          code_verifier: String,
          mode: Privy::AuthenticateModeOption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        authorization_code:,
        state_code:,
        # The type of OAuth authorization code.
        code_type: nil,
        code_verifier: nil,
        # Whether to allow sign-up during authentication.
        mode: nil
      )
      end

      sig do
        override.returns(
          {
            authorization_code: String,
            state_code: String,
            code_type: Privy::OAuthCodeType::OrSymbol,
            code_verifier: String,
            mode: Privy::AuthenticateModeOption::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
