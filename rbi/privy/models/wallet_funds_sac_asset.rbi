# typed: strong

module Privy
  module Models
    class WalletFundsSacAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletFundsSacAsset, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::WalletFundsSacAsset::Type::TaggedSymbol) }
      attr_accessor :type

      # A Stellar Asset Contract (SAC) asset.
      sig do
        params(
          address: String,
          type: Privy::WalletFundsSacAsset::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(address:, type:)
      end

      sig do
        override.returns(
          {
            address: String,
            type: Privy::WalletFundsSacAsset::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::WalletFundsSacAsset::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SAC = T.let(:sac, Privy::WalletFundsSacAsset::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletFundsSacAsset::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
