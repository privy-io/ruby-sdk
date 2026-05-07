# typed: strong

module Privy
  module Models
    class WalletFundsNativeTokenAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletFundsNativeTokenAsset, Privy::Internal::AnyHash)
        end

      sig { returns(NilClass) }
      attr_accessor :address

      sig { returns(Privy::WalletFundsNativeTokenAsset::Type::TaggedSymbol) }
      attr_accessor :type

      # A native token asset (e.g. ETH, SOL).
      sig do
        params(
          address: NilClass,
          type: Privy::WalletFundsNativeTokenAsset::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(address:, type:)
      end

      sig do
        override.returns(
          {
            address: NilClass,
            type: Privy::WalletFundsNativeTokenAsset::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::WalletFundsNativeTokenAsset::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NATIVE_TOKEN =
          T.let(
            :"native-token",
            Privy::WalletFundsNativeTokenAsset::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::WalletFundsNativeTokenAsset::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
