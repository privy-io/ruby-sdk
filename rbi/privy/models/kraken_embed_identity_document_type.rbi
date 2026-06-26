# typed: strong

module Privy
  module Models
    # Document types accepted for proof of identity verification.
    module KrakenEmbedIdentityDocumentType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedIdentityDocumentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      PASSPORT =
        T.let(:passport, Privy::KrakenEmbedIdentityDocumentType::TaggedSymbol)
      DRIVERS_LICENSE =
        T.let(
          :drivers_license,
          Privy::KrakenEmbedIdentityDocumentType::TaggedSymbol
        )
      ID_CARD =
        T.let(:id_card, Privy::KrakenEmbedIdentityDocumentType::TaggedSymbol)
      RESIDENCE_CARD =
        T.let(
          :residence_card,
          Privy::KrakenEmbedIdentityDocumentType::TaggedSymbol
        )
      SPECIAL_PERMANENT_RESIDENCE_CARD =
        T.let(
          :special_permanent_residence_card,
          Privy::KrakenEmbedIdentityDocumentType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedIdentityDocumentType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
