# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAddressRoute < Privy::Internal::Type::BaseModel
      # @!attribute deposit_address
      #
      #   @return [String]
      required :deposit_address, String

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

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(deposit_address:, destination:, source:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CryptoDepositAddressRoute} for more details.
      #
      #   One deposit address and the source/destination route it accepts.
      #
      #   @param deposit_address [String]
      #
      #   @param destination [Privy::Models::CryptoDepositAsset] An asset on a chain. Uses a human-readable alias (usdc, base) when one is on fil
      #
      #   @param source [Privy::Models::CryptoDepositAssetFilterAll, Privy::Models::CryptoDepositAssetFilterInclude, Privy::Models::CryptoDepositAssetFilterExclude] Which assets a deposit address accepts. Asset and chain use human-readable alias
      #
      #   @param wallet_id [String]
    end
  end
end
