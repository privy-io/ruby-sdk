# typed: strong

module Privy
  module Models
    class CryptoDepositAssetFilterAll < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CryptoDepositAssetFilterAll, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::CryptoDepositAssetFilterAll::Mode::OrSymbol) }
      attr_accessor :mode

      # Match all assets.
      sig do
        params(
          mode: Privy::CryptoDepositAssetFilterAll::Mode::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(mode:)
      end

      sig do
        override.returns(
          { mode: Privy::CryptoDepositAssetFilterAll::Mode::OrSymbol }
        )
      end
      def to_hash
      end

      module Mode
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CryptoDepositAssetFilterAll::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALL =
          T.let(:all, Privy::CryptoDepositAssetFilterAll::Mode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::CryptoDepositAssetFilterAll::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
