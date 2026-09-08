# typed: strong

module Privy
  module Models
    class WalletFundsBtknAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletFundsBtknAsset, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :identifier

      sig { returns(Privy::WalletFundsBtknAsset::Type::TaggedSymbol) }
      attr_accessor :type

      # A token issued on Spark, identified by its BTKN identifier.
      sig do
        params(
          identifier: String,
          type: Privy::WalletFundsBtknAsset::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(identifier:, type:)
      end

      sig do
        override.returns(
          {
            identifier: String,
            type: Privy::WalletFundsBtknAsset::Type::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::WalletFundsBtknAsset::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BTKN = T.let(:btkn, Privy::WalletFundsBtknAsset::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::WalletFundsBtknAsset::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
