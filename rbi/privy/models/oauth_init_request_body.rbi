# typed: strong

module Privy
  module Models
    class OAuthInitRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthInitRequestBody, Privy::Internal::AnyHash)
        end

      # The ID of an OAuth provider.
      sig { returns(T.any(Privy::ExternalOAuthProviderID::OrSymbol, String)) }
      attr_accessor :provider

      sig { returns(String) }
      attr_accessor :redirect_to

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      sig { returns(T.nilable(String)) }
      attr_reader :code_challenge

      sig { params(code_challenge: String).void }
      attr_writer :code_challenge

      sig { returns(T.nilable(String)) }
      attr_reader :state_code

      sig { params(state_code: String).void }
      attr_writer :state_code

      # The request body for initiating an OAuth ceremony.
      sig do
        params(
          provider: T.any(Privy::ExternalOAuthProviderID::OrSymbol, String),
          redirect_to: String,
          token: String,
          code_challenge: String,
          state_code: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of an OAuth provider.
        provider:,
        redirect_to:,
        token: nil,
        code_challenge: nil,
        state_code: nil
      )
      end

      sig do
        override.returns(
          {
            provider: T.any(Privy::ExternalOAuthProviderID::OrSymbol, String),
            redirect_to: String,
            token: String,
            code_challenge: String,
            state_code: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
