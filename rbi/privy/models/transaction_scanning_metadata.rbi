# typed: strong

module Privy
  module Models
    class TransactionScanningMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransactionScanningMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :domain

      # Additional information for Blockaid to validate against.
      sig { params(domain: String).returns(T.attached_class) }
      def self.new(domain:)
      end

      sig { override.returns({ domain: String }) }
      def to_hash
      end
    end
  end
end
