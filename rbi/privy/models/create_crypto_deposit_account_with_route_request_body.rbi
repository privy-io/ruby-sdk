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

      # An asset on a chain. Uses a human-readable alias (usdc, tempo) when one is on
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

      sig do
        returns(
          Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type::OrSymbol
        )
      end
      attr_accessor :type

      # How deposit source wallets are chosen. Omission uses `dedicated`. Destination
      # reuse applies only to the destination's own chain type.
      sig { returns(T.nilable(Privy::CryptoDepositAddressStrategy::OrSymbol)) }
      attr_reader :deposit_address_strategy

      sig do
        params(
          deposit_address_strategy:
            Privy::CryptoDepositAddressStrategy::OrSymbol
        ).void
      end
      attr_writer :deposit_address_strategy

      # Creates a crypto deposit account from an inline source and destination.
      sig do
        params(
          destination: Privy::CryptoDepositAsset::OrHash,
          source:
            T.any(
              Privy::CryptoDepositAssetFilterAll::OrHash,
              Privy::CryptoDepositAssetFilterInclude::OrHash,
              Privy::CryptoDepositAssetFilterExclude::OrHash
            ),
          type:
            Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type::OrSymbol,
          deposit_address_strategy:
            Privy::CryptoDepositAddressStrategy::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # An asset on a chain. Uses a human-readable alias (usdc, tempo) when one is on
        # file, otherwise the raw asset address and CAIP-2.
        destination:,
        # Which assets a deposit address accepts. Asset and chain use human-readable
        # aliases when known.
        source:,
        type:,
        # How deposit source wallets are chosen. Omission uses `dedicated`. Destination
        # reuse applies only to the destination's own chain type.
        deposit_address_strategy: nil
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
              ),
            type:
              Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type::OrSymbol,
            deposit_address_strategy:
              Privy::CryptoDepositAddressStrategy::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INLINE_ROUTE =
          T.let(
            :inline_route,
            Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
