# typed: strong

module Privy
  module Models
    class BridgeCryptoTransferMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeCryptoTransferMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::BridgeCryptoTransferMetadata::Method::TaggedSymbol) }
      attr_accessor :method_

      # The wallet address that sent the transfer.
      sig { returns(String) }
      attr_accessor :source_wallet_address

      sig { returns(String) }
      attr_accessor :transfer_id

      sig { returns(Privy::BridgeCryptoTransferMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      # Bridge metadata for a crypto deposit via transfer.
      sig do
        params(
          method_: Privy::BridgeCryptoTransferMetadata::Method::OrSymbol,
          source_wallet_address: String,
          transfer_id: String,
          type: Privy::BridgeCryptoTransferMetadata::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        method_:,
        # The wallet address that sent the transfer.
        source_wallet_address:,
        transfer_id:,
        type:
      )
      end

      sig do
        override.returns(
          {
            method_: Privy::BridgeCryptoTransferMetadata::Method::TaggedSymbol,
            source_wallet_address: String,
            transfer_id: String,
            type: Privy::BridgeCryptoTransferMetadata::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeCryptoTransferMetadata::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRANSFER =
          T.let(
            :transfer,
            Privy::BridgeCryptoTransferMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeCryptoTransferMetadata::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeCryptoTransferMetadata::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CRYPTO_DEPOSIT =
          T.let(
            :crypto_deposit,
            Privy::BridgeCryptoTransferMetadata::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeCryptoTransferMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
