# typed: strong

module Privy
  module Models
    class DepositMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::DepositMetadata, Privy::Internal::AnyHash) }

      # Relay details for a refunded wallet deposit.
      sig { returns(Privy::RefundDetails) }
      attr_reader :details

      sig { params(details: Privy::RefundDetails::OrHash).void }
      attr_writer :details

      sig { returns(Privy::DepositMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      # Metadata identifying a refunded wallet deposit.
      sig do
        params(
          details: Privy::RefundDetails::OrHash,
          type: Privy::DepositMetadata::Type::OrSymbol
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
            type: Privy::DepositMetadata::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::DepositMetadata::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUND = T.let(:refund, Privy::DepositMetadata::Type::TaggedSymbol)

        sig do
          override.returns(T::Array[Privy::DepositMetadata::Type::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
