# typed: strong

module Privy
  module Models
    class BridgeRefundMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeRefundMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :drain_id

      sig { returns(String) }
      attr_accessor :liquidation_address_id

      sig { returns(Privy::BridgeRefundMetadata::Method::TaggedSymbol) }
      attr_accessor :method_

      # The original deposit transaction hash that triggered the failed drain.
      sig { returns(String) }
      attr_accessor :original_transaction_hash

      sig { returns(Privy::BridgeRefundMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      # Bridge metadata for a refund via liquidation address.
      sig do
        params(
          drain_id: String,
          liquidation_address_id: String,
          method_: Privy::BridgeRefundMetadata::Method::OrSymbol,
          original_transaction_hash: String,
          type: Privy::BridgeRefundMetadata::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        drain_id:,
        liquidation_address_id:,
        method_:,
        # The original deposit transaction hash that triggered the failed drain.
        original_transaction_hash:,
        type:
      )
      end

      sig do
        override.returns(
          {
            drain_id: String,
            liquidation_address_id: String,
            method_: Privy::BridgeRefundMetadata::Method::TaggedSymbol,
            original_transaction_hash: String,
            type: Privy::BridgeRefundMetadata::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::BridgeRefundMetadata::Method) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIQUIDATION_ADDRESS =
          T.let(
            :liquidation_address,
            Privy::BridgeRefundMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeRefundMetadata::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::BridgeRefundMetadata::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REFUND = T.let(:refund, Privy::BridgeRefundMetadata::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::BridgeRefundMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
