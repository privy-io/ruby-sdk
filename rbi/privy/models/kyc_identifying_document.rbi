# typed: strong

module Privy
  module Models
    class KYCIdentifyingDocument < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYCIdentifyingDocument, Privy::Internal::AnyHash)
        end

      # ISO 3166-1 alpha-3 issuing country code.
      sig { returns(String) }
      attr_accessor :issuing_country

      # Document type identifier.
      sig { returns(String) }
      attr_accessor :type

      # Document description.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Document expiration date.
      sig { returns(T.nilable(String)) }
      attr_reader :expiration

      sig { params(expiration: String).void }
      attr_writer :expiration

      # Base64-encoded back image.
      sig { returns(T.nilable(String)) }
      attr_reader :image_back

      sig { params(image_back: String).void }
      attr_writer :image_back

      # Base64-encoded front image.
      sig { returns(T.nilable(String)) }
      attr_reader :image_front

      sig { params(image_front: String).void }
      attr_writer :image_front

      # Document number.
      sig { returns(T.nilable(String)) }
      attr_reader :number

      sig { params(number: String).void }
      attr_writer :number

      # An identity document for KYC verification.
      sig do
        params(
          issuing_country: String,
          type: String,
          description: String,
          expiration: String,
          image_back: String,
          image_front: String,
          number: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ISO 3166-1 alpha-3 issuing country code.
        issuing_country:,
        # Document type identifier.
        type:,
        # Document description.
        description: nil,
        # Document expiration date.
        expiration: nil,
        # Base64-encoded back image.
        image_back: nil,
        # Base64-encoded front image.
        image_front: nil,
        # Document number.
        number: nil
      )
      end

      sig do
        override.returns(
          {
            issuing_country: String,
            type: String,
            description: String,
            expiration: String,
            image_back: String,
            image_front: String,
            number: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
