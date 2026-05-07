# typed: strong

module Privy
  module Models
    class OAuthLinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthLinkRequestBody, Privy::Internal::AnyHash)
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

      # The request body for linking an OAuth account.
      sig do
        params(
          authorization_code: String,
          state_code: String,
          code_type: Privy::OAuthCodeType::OrSymbol,
          code_verifier: String
        ).returns(T.attached_class)
      end
      def self.new(
        authorization_code:,
        state_code:,
        # The type of OAuth authorization code.
        code_type: nil,
        code_verifier: nil
      )
      end

      sig do
        override.returns(
          {
            authorization_code: String,
            state_code: String,
            code_type: Privy::OAuthCodeType::OrSymbol,
            code_verifier: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
