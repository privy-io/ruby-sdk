# frozen_string_literal: true

module Privy
  module Models
    class CoinbaseOnRampInitEthereumInput < Privy::Internal::Type::BaseModel
      # @!attribute addresses
      #
      #   @return [Array<Privy::Models::CoinbaseOnRampEthereumAddress>]
      required :addresses, -> { Privy::Internal::Type::ArrayOf[Privy::CoinbaseOnRampEthereumAddress] }

      # @!attribute assets
      #
      #   @return [Array<Symbol, Privy::Models::CoinbaseEthereumAsset>, nil]
      optional :assets, -> { Privy::Internal::Type::ArrayOf[enum: Privy::CoinbaseEthereumAsset] }

      # @!method initialize(addresses:, assets: nil)
      #   Input for initializing a Coinbase on-ramp session for Ethereum.
      #
      #   @param addresses [Array<Privy::Models::CoinbaseOnRampEthereumAddress>]
      #   @param assets [Array<Symbol, Privy::Models::CoinbaseEthereumAsset>]
    end
  end
end
