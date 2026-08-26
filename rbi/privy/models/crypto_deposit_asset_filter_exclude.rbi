# typed: strong

module Privy
  module Models
    class CryptoDepositAssetFilterExclude < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAssetFilterExclude,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::CryptoDepositAssetFilterExclude::Mode::TaggedSymbol)
      end
      attr_accessor :mode

      sig { returns(T::Array[Privy::CryptoDepositAsset]) }
      attr_accessor :values

      # Match all assets except the specified ones, using human-readable aliases when
      # known.
      sig do
        params(
          mode: Privy::CryptoDepositAssetFilterExclude::Mode::OrSymbol,
          values: T::Array[Privy::CryptoDepositAsset::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(mode:, values:)
      end

      sig do
        override.returns(
          {
            mode: Privy::CryptoDepositAssetFilterExclude::Mode::TaggedSymbol,
            values: T::Array[Privy::CryptoDepositAsset]
          }
        )
      end
      def to_hash
      end

      module Mode
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::CryptoDepositAssetFilterExclude::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXCLUDE =
          T.let(
            :exclude,
            Privy::CryptoDepositAssetFilterExclude::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::CryptoDepositAssetFilterExclude::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
