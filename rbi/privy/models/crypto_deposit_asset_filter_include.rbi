# typed: strong

module Privy
  module Models
    class CryptoDepositAssetFilterInclude < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CryptoDepositAssetFilterInclude,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(Privy::CryptoDepositAssetFilterInclude::Mode::TaggedSymbol)
      end
      attr_accessor :mode

      sig { returns(T::Array[Privy::CryptoDepositAsset]) }
      attr_accessor :values

      # Match only the specified assets, using human-readable aliases when known.
      sig do
        params(
          mode: Privy::CryptoDepositAssetFilterInclude::Mode::OrSymbol,
          values: T::Array[Privy::CryptoDepositAsset::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(mode:, values:)
      end

      sig do
        override.returns(
          {
            mode: Privy::CryptoDepositAssetFilterInclude::Mode::TaggedSymbol,
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
            T.all(Symbol, Privy::CryptoDepositAssetFilterInclude::Mode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INCLUDE =
          T.let(
            :include,
            Privy::CryptoDepositAssetFilterInclude::Mode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::CryptoDepositAssetFilterInclude::Mode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
