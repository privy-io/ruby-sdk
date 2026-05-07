# frozen_string_literal: true

module Privy
  module Models
    class CoinbaseOnRampInitSolanaInput < Privy::Internal::Type::BaseModel
      # @!attribute addresses
      #
      #   @return [Array<Privy::Models::CoinbaseOnRampSolanaAddress>]
      required :addresses, -> { Privy::Internal::Type::ArrayOf[Privy::CoinbaseOnRampSolanaAddress] }

      # @!attribute assets
      #
      #   @return [Array<Symbol, Privy::Models::CoinbaseSolanaAsset>, nil]
      optional :assets, -> { Privy::Internal::Type::ArrayOf[enum: Privy::CoinbaseSolanaAsset] }

      # @!method initialize(addresses:, assets: nil)
      #   Input for initializing a Coinbase on-ramp session for Solana.
      #
      #   @param addresses [Array<Privy::Models::CoinbaseOnRampSolanaAddress>]
      #   @param assets [Array<Symbol, Privy::Models::CoinbaseSolanaAsset>]
    end
  end
end
