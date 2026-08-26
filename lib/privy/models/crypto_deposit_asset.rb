# frozen_string_literal: true

module Privy
  module Models
    class CryptoDepositAsset < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Known alias (usdc) or raw asset address.
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   Known alias (base) or CAIP-2.
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(asset:, chain:)
      #   An asset on a chain. Uses a human-readable alias (usdc, base) when one is on
      #   file, otherwise the raw asset address and CAIP-2.
      #
      #   @param asset [String] Known alias (usdc) or raw asset address.
      #
      #   @param chain [String] Known alias (base) or CAIP-2.
    end
  end
end
