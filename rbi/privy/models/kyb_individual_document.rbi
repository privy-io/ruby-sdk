# typed: strong

module Privy
  module Models
    class KYBIndividualDocument < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBIndividualDocument, Privy::Internal::AnyHash)
        end

      # Base64-encoded data URI of the document.
      sig { returns(String) }
      attr_accessor :file

      # What this document evidences. Supports multiple purposes per file.
      sig { returns(T::Array[String]) }
      attr_accessor :purposes

      # Document description. Required when "other" is one of the purposes.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # A supporting document for an associated person.
      sig do
        params(
          file: String,
          purposes: T::Array[String],
          description: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Base64-encoded data URI of the document.
        file:,
        # What this document evidences. Supports multiple purposes per file.
        purposes:,
        # Document description. Required when "other" is one of the purposes.
        description: nil
      )
      end

      sig do
        override.returns(
          { file: String, purposes: T::Array[String], description: String }
        )
      end
      def to_hash
      end
    end
  end
end
