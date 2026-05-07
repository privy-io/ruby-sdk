# typed: strong

module Privy
  module Models
    class BridgeCryptoDepositMetadata < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::BridgeCryptoDepositMetadata, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :drain_id

      # The crypto address of the liquidation address that received the deposit.
      sig { returns(String) }
      attr_accessor :liquidation_address

      sig { returns(String) }
      attr_accessor :liquidation_address_id

      sig { returns(Privy::BridgeCryptoDepositMetadata::Method::TaggedSymbol) }
      attr_accessor :method_

      # The address that sent the deposit.
      sig { returns(String) }
      attr_accessor :source_wallet_address

      sig { returns(Privy::BridgeCryptoDepositMetadata::Type::TaggedSymbol) }
      attr_accessor :type

      # Bridge metadata for a crypto deposit via liquidation address.
      sig do
        params(
          drain_id: String,
          liquidation_address: String,
          liquidation_address_id: String,
          method_: Privy::BridgeCryptoDepositMetadata::Method::OrSymbol,
          source_wallet_address: String,
          type: Privy::BridgeCryptoDepositMetadata::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        drain_id:,
        # The crypto address of the liquidation address that received the deposit.
        liquidation_address:,
        liquidation_address_id:,
        method_:,
        # The address that sent the deposit.
        source_wallet_address:,
        type:
      )
      end

      sig do
        override.returns(
          {
            drain_id: String,
            liquidation_address: String,
            liquidation_address_id: String,
            method_: Privy::BridgeCryptoDepositMetadata::Method::TaggedSymbol,
            source_wallet_address: String,
            type: Privy::BridgeCryptoDepositMetadata::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeCryptoDepositMetadata::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        LIQUIDATION_ADDRESS =
          T.let(
            :liquidation_address,
            Privy::BridgeCryptoDepositMetadata::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeCryptoDepositMetadata::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::BridgeCryptoDepositMetadata::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CRYPTO_DEPOSIT =
          T.let(
            :crypto_deposit,
            Privy::BridgeCryptoDepositMetadata::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::BridgeCryptoDepositMetadata::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
