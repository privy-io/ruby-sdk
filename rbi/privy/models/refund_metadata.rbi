# typed: strong

module Privy
  module Models
    class RefundMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::RefundMetadata, Privy::Internal::AnyHash) }

      # Relay details for a refunded wallet deposit.
      sig { returns(Privy::RefundDetails) }
      attr_reader :details

      sig { params(details: Privy::RefundDetails::OrHash).void }
      attr_writer :details

      sig { returns(Privy::RefundMetadata::Type::OrSymbol) }
      attr_accessor :type

      # Metadata identifying a refunded wallet deposit.
      sig do
        params(
          details: Privy::RefundDetails::OrHash,
          type: Privy::RefundMetadata::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Relay details for a refunded wallet deposit.
        details:,
        type:
      )
      end

      sig do
        override.returns(
          {
            details: Privy::RefundDetails,
            type: Privy::RefundMetadata::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RefundMetadata::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUND = T.let(:refund, Privy::RefundMetadata::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::RefundMetadata::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
