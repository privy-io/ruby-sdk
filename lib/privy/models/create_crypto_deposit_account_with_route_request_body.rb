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
      #   How deposit source wallets are chosen. Omission uses `dedicated`. Destination
      #   reuse applies only to the destination's own chain type.
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
      #   @param deposit_address_strategy [Symbol, Privy::Models::CryptoDepositAddressStrategy] How deposit source wallets are chosen. Omission uses `dedicated`. Destination re

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
