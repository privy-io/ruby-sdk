# typed: strong

module Privy
  module Models
    class KrakenEmbedStartIdentityMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartIdentityMetadata,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :document_number

      # Document types accepted for proof of identity verification.
      sig do
        returns(T.nilable(Privy::KrakenEmbedIdentityDocumentType::OrSymbol))
      end
      attr_accessor :document_type

      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # Identity information hints including full name and date of birth for proof of
      # identity verification.
      sig { returns(T.nilable(Privy::KrakenEmbedStartIdentityInfo)) }
      attr_reader :identity

      sig do
        params(
          identity: T.nilable(Privy::KrakenEmbedStartIdentityInfo::OrHash)
        ).void
      end
      attr_writer :identity

      # ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      sig { returns(T.nilable(Privy::KrakenEmbedCountryCode::OrSymbol)) }
      attr_accessor :issuing_country

      # ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
      sig { returns(T.nilable(Privy::KrakenEmbedCountryCode::OrSymbol)) }
      attr_accessor :nationality

      # Optional best-effort metadata hints for proof of identity verification.
      sig do
        params(
          document_number: T.nilable(String),
          document_type:
            T.nilable(Privy::KrakenEmbedIdentityDocumentType::OrSymbol),
          expiration_date: T.nilable(Date),
          identity: T.nilable(Privy::KrakenEmbedStartIdentityInfo::OrHash),
          issuing_country: T.nilable(Privy::KrakenEmbedCountryCode::OrSymbol),
          nationality: T.nilable(Privy::KrakenEmbedCountryCode::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        document_number: nil,
        # Document types accepted for proof of identity verification.
        document_type: nil,
        expiration_date: nil,
        # Identity information hints including full name and date of birth for proof of
        # identity verification.
        identity: nil,
        # ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
        issuing_country: nil,
        # ISO 3166-1 alpha-2 country codes supported by Kraken Embed.
        nationality: nil
      )
      end

      sig do
        override.returns(
          {
            document_number: T.nilable(String),
            document_type:
              T.nilable(Privy::KrakenEmbedIdentityDocumentType::OrSymbol),
            expiration_date: T.nilable(Date),
            identity: T.nilable(Privy::KrakenEmbedStartIdentityInfo),
            issuing_country: T.nilable(Privy::KrakenEmbedCountryCode::OrSymbol),
            nationality: T.nilable(Privy::KrakenEmbedCountryCode::OrSymbol)
          }
        )
      end
      def to_hash
      end
    end
  end
end
