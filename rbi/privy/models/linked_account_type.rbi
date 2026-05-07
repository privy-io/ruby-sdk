# typed: strong

module Privy
  module Models
    # The possible types of linked accounts.
    module LinkedAccountType
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias { T.any(Privy::LinkedAccountType::TaggedSymbol, String) }

      sig { override.returns(T::Array[Privy::LinkedAccountType::Variants]) }
      def self.variants
      end

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::LinkedAccountType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EMAIL = T.let(:email, Privy::LinkedAccountType::TaggedSymbol)
      PHONE = T.let(:phone, Privy::LinkedAccountType::TaggedSymbol)
      WALLET = T.let(:wallet, Privy::LinkedAccountType::TaggedSymbol)
      SMART_WALLET =
        T.let(:smart_wallet, Privy::LinkedAccountType::TaggedSymbol)
      GOOGLE_OAUTH =
        T.let(:google_oauth, Privy::LinkedAccountType::TaggedSymbol)
      TWITTER_OAUTH =
        T.let(:twitter_oauth, Privy::LinkedAccountType::TaggedSymbol)
      DISCORD_OAUTH =
        T.let(:discord_oauth, Privy::LinkedAccountType::TaggedSymbol)
      GITHUB_OAUTH =
        T.let(:github_oauth, Privy::LinkedAccountType::TaggedSymbol)
      SPOTIFY_OAUTH =
        T.let(:spotify_oauth, Privy::LinkedAccountType::TaggedSymbol)
      INSTAGRAM_OAUTH =
        T.let(:instagram_oauth, Privy::LinkedAccountType::TaggedSymbol)
      TIKTOK_OAUTH =
        T.let(:tiktok_oauth, Privy::LinkedAccountType::TaggedSymbol)
      LINE_OAUTH = T.let(:line_oauth, Privy::LinkedAccountType::TaggedSymbol)
      TWITCH_OAUTH =
        T.let(:twitch_oauth, Privy::LinkedAccountType::TaggedSymbol)
      LINKEDIN_OAUTH =
        T.let(:linkedin_oauth, Privy::LinkedAccountType::TaggedSymbol)
      APPLE_OAUTH = T.let(:apple_oauth, Privy::LinkedAccountType::TaggedSymbol)
      CUSTOM_AUTH = T.let(:custom_auth, Privy::LinkedAccountType::TaggedSymbol)
      FARCASTER = T.let(:farcaster, Privy::LinkedAccountType::TaggedSymbol)
      PASSKEY = T.let(:passkey, Privy::LinkedAccountType::TaggedSymbol)
      TELEGRAM = T.let(:telegram, Privy::LinkedAccountType::TaggedSymbol)
      CROSS_APP = T.let(:cross_app, Privy::LinkedAccountType::TaggedSymbol)
      AUTHORIZATION_KEY =
        T.let(:authorization_key, Privy::LinkedAccountType::TaggedSymbol)
    end
  end
end
