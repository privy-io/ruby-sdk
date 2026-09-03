# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCreateCardInput < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   The asset to fund the card. Must be 'usdc' on EVM and Solana, or 'path_usd' on
      #   Tempo.
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain_id
      #   A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @return [String]
      required :chain_id, String

      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(asset:, chain_id:, environment:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingCreateCardInput} for more details.
      #
      #   Input for creating a virtual Stripe Issuing card for a Privy wallet.
      #
      #   @param asset [String] The asset to fund the card. Must be 'usdc' on EVM and Solana, or 'path_usd' on T
      #
      #   @param chain_id [String] A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param wallet_id [String]
    end
  end
end
