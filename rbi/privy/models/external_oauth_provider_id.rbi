# typed: strong

module Privy
  module Models
    # The ID of an external OAuth provider.
    module ExternalOAuthProviderID
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::ExternalOAuthProviderID) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      GOOGLE = T.let(:google, Privy::ExternalOAuthProviderID::TaggedSymbol)
      DISCORD = T.let(:discord, Privy::ExternalOAuthProviderID::TaggedSymbol)
      TWITTER = T.let(:twitter, Privy::ExternalOAuthProviderID::TaggedSymbol)
      GITHUB = T.let(:github, Privy::ExternalOAuthProviderID::TaggedSymbol)
      SPOTIFY = T.let(:spotify, Privy::ExternalOAuthProviderID::TaggedSymbol)
      INSTAGRAM =
        T.let(:instagram, Privy::ExternalOAuthProviderID::TaggedSymbol)
      TIKTOK = T.let(:tiktok, Privy::ExternalOAuthProviderID::TaggedSymbol)
      LINKEDIN = T.let(:linkedin, Privy::ExternalOAuthProviderID::TaggedSymbol)
      APPLE = T.let(:apple, Privy::ExternalOAuthProviderID::TaggedSymbol)
      LINE = T.let(:line, Privy::ExternalOAuthProviderID::TaggedSymbol)
      TWITCH = T.let(:twitch, Privy::ExternalOAuthProviderID::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::ExternalOAuthProviderID::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
