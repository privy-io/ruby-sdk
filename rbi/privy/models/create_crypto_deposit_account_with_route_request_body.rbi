# typed: strong

module Privy
  module Models
    class CreateCryptoDepositAccountWithRouteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateCryptoDepositAccountWithRouteRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
      # file, otherwise the raw asset address and CAIP-2.
      sig { returns(Privy::CryptoDepositAsset) }
      attr_reader :destination

      sig { params(destination: Privy::CryptoDepositAsset::OrHash).void }
      attr_writer :destination

      # Which assets a deposit address accepts. Asset and chain use human-readable
      # aliases when known.
      sig do
        returns(
          T.any(
            Privy::CryptoDepositAssetFilterAll,
            Privy::CryptoDepositAssetFilterInclude,
            Privy::CryptoDepositAssetFilterExclude
          )
        )
      end
      attr_accessor :source

      # Creates a crypto deposit account from an inline source and destination.
      sig do
        params(
          destination: Privy::CryptoDepositAsset::OrHash,
          source:
            T.any(
              Privy::CryptoDepositAssetFilterAll::OrHash,
              Privy::CryptoDepositAssetFilterInclude::OrHash,
              Privy::CryptoDepositAssetFilterExclude::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
        # file, otherwise the raw asset address and CAIP-2.
        destination:,
        # Which assets a deposit address accepts. Asset and chain use human-readable
        # aliases when known.
        source:
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::CryptoDepositAsset,
            source:
              T.any(
                Privy::CryptoDepositAssetFilterAll,
                Privy::CryptoDepositAssetFilterInclude,
                Privy::CryptoDepositAssetFilterExclude
              )
          }
        )
      end
      def to_hash
      end
    end
  end
end
