# typed: strong

module Privy
  module Models
    class BridgeTransferRefundMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeTransferRefundMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::BridgeTransferRefundMetadata::Method::TaggedSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :transfer_id

      sig { returns(Privy::BridgeTransferRefundMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      # The original transfer transaction hash (if available).
      sig { returns(T.nilable(String)) }
      attr_reader :original_transaction_hash

      sig { params(original_transaction_hash: String).void }
      attr_writer :original_transaction_hash

      # Bridge metadata for a transfer refund.
      sig do
        params(
          method_: Privy::BridgeTransferRefundMetadata::Method::OrSymbol,
          transfer_id: String,
          type: Privy::BridgeTransferRefundMetadata::Type::OrSymbol,
          original_transaction_hash: String
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        transfer_id:,
        type:,
        # The original transfer transaction hash (if available).
        original_transaction_hash: nil
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::BridgeTransferRefundMetadata::Method::TaggedSymbol,
            transfer_id: String,
            type: Privy::BridgeTransferRefundMetadata::Type::TaggedSymbol,
            original_transaction_hash: String
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeTransferRefundMetadata::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(
            :transfer,
            Privy::BridgeTransferRefundMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeTransferRefundMetadata::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeTransferRefundMetadata::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUND =
          T.let(
            :refund,
            Privy::BridgeTransferRefundMetadata::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeTransferRefundMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
