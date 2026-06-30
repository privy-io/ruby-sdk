# typed: strong

module Privy
  module Models
    class KrakenEmbedStartAddressMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::KrakenEmbedStartAddressMetadata,
            Privy::Internal::AnyHash
          )
        end

      # User's residential address including street, city, postal code, and country.
      sig { returns(T.nilable(Privy::KrakenEmbedResidence)) }
      attr_reader :address

      sig do
        params(address: T.nilable(Privy::KrakenEmbedResidence::OrHash)).void
      end
      attr_writer :address

      sig { returns(T.nilable(String)) }
      attr_accessor :document_number

      # Document types accepted for proof of address verification.
      sig do
        returns(T.nilable(Privy::KrakenEmbedResidenceDocumentType::OrSymbol))
      end
      attr_accessor :document_type

      sig { returns(T.nilable(Date)) }
      attr_accessor :expiration_date

      # Optional best-effort metadata hints for proof of address verification.
      sig do
        params(
          address: T.nilable(Privy::KrakenEmbedResidence::OrHash),
          document_number: T.nilable(String),
          document_type:
            T.nilable(Privy::KrakenEmbedResidenceDocumentType::OrSymbol),
          expiration_date: T.nilable(Date)
        ).returns(T.attached_class)
      end
      def self.new(
        # User's residential address including street, city, postal code, and country.
        address: nil,
        document_number: nil,
        # Document types accepted for proof of address verification.
        document_type: nil,
        expiration_date: nil
      )
      end

      sig do
        override.returns(
          {
            address: T.nilable(Privy::KrakenEmbedResidence),
            document_number: T.nilable(String),
            document_type:
              T.nilable(Privy::KrakenEmbedResidenceDocumentType::OrSymbol),
            expiration_date: T.nilable(Date)
          }
        )
      end
      def to_hash
      end
    end
  end
end
