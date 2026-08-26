# typed: strong

module Privy
  module Models
    class CryptoDepositAddressRoute < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CryptoDepositAddressRoute, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :deposit_address

      # An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
      # file, otherwise the raw asset address and CAIP-2.
      sig { returns(Privy::CryptoDepositAsset) }
      attr_reader :destination

      sig { params(destination: Privy::CryptoDepositAsset::OrHash).void }
      attr_writer :destination

      # Which assets a deposit address accepts. Asset and chain use human-readable
      # aliases when known.
      sig { returns(Privy::CryptoDepositAssetFilter::Variants) }
      attr_accessor :source

      sig { returns(String) }
      attr_accessor :wallet_id

      # One deposit address and the source/destination route it accepts.
      sig do
        params(
          deposit_address: String,
          destination: Privy::CryptoDepositAsset::OrHash,
          source:
            T.any(
              Privy::CryptoDepositAssetFilterAll::OrHash,
              Privy::CryptoDepositAssetFilterInclude::OrHash,
              Privy::CryptoDepositAssetFilterExclude::OrHash
            ),
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        deposit_address:,
        # An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
        # file, otherwise the raw asset address and CAIP-2.
        destination:,
        # Which assets a deposit address accepts. Asset and chain use human-readable
        # aliases when known.
        source:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            deposit_address: String,
            destination: Privy::CryptoDepositAsset,
            source: Privy::CryptoDepositAssetFilter::Variants,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
