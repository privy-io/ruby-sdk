# typed: strong

module Privy
  module Models
    class BridgeFiatTransferMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeFiatTransferMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::BridgeFiatTransferMetadata::Method::TaggedSymbol) }
      attr_accessor :method_

      sig { returns(String) }
      attr_accessor :transfer_id

      sig { returns(Privy::BridgeFiatTransferMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      # Bridge metadata for a fiat deposit via transfer.
      sig do
        params(
          method_: Privy::BridgeFiatTransferMetadata::Method::OrSymbol,
          transfer_id: String,
          type: Privy::BridgeFiatTransferMetadata::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(method_:, transfer_id:, type:)
      end

      sig do
        override.returns(
          {
            method_: Privy::BridgeFiatTransferMetadata::Method::TaggedSymbol,
            transfer_id: String,
            type: Privy::BridgeFiatTransferMetadata::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeFiatTransferMetadata::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(
            :transfer,
            Privy::BridgeFiatTransferMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeFiatTransferMetadata::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeFiatTransferMetadata::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        FIAT_DEPOSIT =
          T.let(
            :fiat_deposit,
            Privy::BridgeFiatTransferMetadata::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeFiatTransferMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
