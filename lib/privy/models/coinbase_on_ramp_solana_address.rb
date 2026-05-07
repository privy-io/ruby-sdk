# frozen_string_literal: true

module Privy
  module Models
    class CoinbaseOnRampSolanaAddress < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute blockchains
      #
      #   @return [Array<Symbol, Privy::Models::CoinbaseBlockchain>]
      required :blockchains, -> { Privy::Internal::Type::ArrayOf[enum: Privy::CoinbaseBlockchain] }

      # @!method initialize(address:, blockchains:)
      #   A Solana address with supported blockchains for Coinbase on-ramp.
      #
      #   @param address [String]
      #   @param blockchains [Array<Symbol, Privy::Models::CoinbaseBlockchain>]
    end
  end
end
