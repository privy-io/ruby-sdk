# typed: strong

module Privy
  module Models
    class WalletFundsSplAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletFundsSplAsset, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :mint

      sig { returns(Privy::WalletFundsSplAsset::Type::TaggedSymbol) }
      attr_accessor :type

      # A Solana SPL token asset.
      sig do
        params(
          mint: String,
          type: Privy::WalletFundsSplAsset::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(mint:, type:)
      end

      sig do
        override.returns(
          { mint: String, type: Privy::WalletFundsSplAsset::Type::TaggedSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::WalletFundsSplAsset::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SPL = T.let(:spl, Privy::WalletFundsSplAsset::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletFundsSplAsset::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
