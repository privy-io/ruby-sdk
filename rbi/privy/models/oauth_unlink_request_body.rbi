# typed: strong

module Privy
  module Models
    class OAuthUnlinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthUnlinkRequestBody, Privy::Internal::AnyHash)
        end

      # The ID of an OAuth provider.
      sig { returns(T.any(Privy::ExternalOAuthProviderID::OrSymbol, String)) }
      attr_accessor :provider

      sig { returns(String) }
      attr_accessor :subject

      # The request body for unlinking an OAuth account.
      sig do
        params(
          provider: T.any(Privy::ExternalOAuthProviderID::OrSymbol, String),
          subject: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of an OAuth provider.
        provider:,
        subject:
      )
      end

      sig do
        override.returns(
          {
            provider: T.any(Privy::ExternalOAuthProviderID::OrSymbol, String),
            subject: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
