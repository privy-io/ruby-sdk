# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountWithRouteRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   An asset on a chain. Uses a human-readable alias (usdc, tempo) when one is on
      #   file, otherwise the raw asset address and CAIP-2.
      #
      #   @return [Privy::Models::CryptoDepositAsset]
      required :destination, -> { Privy::CryptoDepositAsset }

      # @!attribute source
      #   Which assets a deposit address accepts. Asset and chain use human-readable
      #   aliases when known.
      #
      #   @return [Privy::Models::CryptoDepositAssetFilterAll, Privy::Models::CryptoDepositAssetFilterInclude, Privy::Models::CryptoDepositAssetFilterExclude]
      required :source, union: -> { Privy::CryptoDepositAssetFilter }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody::Type]
      required :type, enum: -> { Privy::CreateCryptoDepositAccountWithRouteRequestBody::Type }

      # @!attribute deposit_address_strategy
      #   Controls deposit source selection. `dedicated` creates or reuses eligible
      #   dedicated source wallets, never the destination wallet. This is the default when
      #   omitted, including for existing routes. `prefer_destination` uses the
      #   destination wallet when it is eligible and its chain family is requested;
      #   otherwise it uses dedicated source wallets. `require_destination` requires the
      #   destination wallet to serve its own chain family when that family is requested
      #   and fails without fallback if it cannot; other requested families still use
      #   dedicated source wallets. On destination reuse, all strategies remove all
      #   existing automation attachments, including matching and disabled ones, then
      #   attach the requested automation. Exported wallets cannot serve as deposit
      #   sources.
      #
      #   @return [Symbol, Privy::Models::CryptoDepositAddressStrategy, nil]
      optional :deposit_address_strategy, enum: -> { Privy::CryptoDepositAddressStrategy }

      # @!method initialize(destination:, source:, type:, deposit_address_strategy: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody} for more
      #   details.
      #
      #   Creates a crypto deposit account from an inline source and destination.
      #
      #   @param destination [Privy::Models::CryptoDepositAsset] An asset on a chain. Uses a human-readable alias (usdc, tempo) when one is on fi
      #
      #   @param source [Privy::Models::CryptoDepositAssetFilterAll, Privy::Models::CryptoDepositAssetFilterInclude, Privy::Models::CryptoDepositAssetFilterExclude] Which assets a deposit address accepts. Asset and chain use human-readable alias
      #
      #   @param type [Symbol, Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody::Type]
      #
      #   @param deposit_address_strategy [Symbol, Privy::Models::CryptoDepositAddressStrategy] Controls deposit source selection. `dedicated` creates or reuses eligible dedica

      # @see Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody#type
      module Type
        extend Privy::Internal::Type::Enum

        INLINE_ROUTE = :inline_route

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
