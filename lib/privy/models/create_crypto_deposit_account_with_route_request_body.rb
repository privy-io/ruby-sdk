# frozen_string_literal: true

module Privy
  module Models
    class CreateCryptoDepositAccountWithRouteRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
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

      # @!method initialize(destination:, source:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody} for more
      #   details.
      #
      #   Creates a crypto deposit account from an inline source and destination.
      #
      #   @param destination [Privy::Models::CryptoDepositAsset] An asset on a chain. Uses a human-readable alias (usdc, base) when one is on fil
      #
      #   @param source [Privy::Models::CryptoDepositAssetFilterAll, Privy::Models::CryptoDepositAssetFilterInclude, Privy::Models::CryptoDepositAssetFilterExclude] Which assets a deposit address accepts. Asset and chain use human-readable alias
    end
  end
end
