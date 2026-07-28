# frozen_string_literal: true

module Privy
  module Models
    class OfframpDepositInstructions < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #
      #   @return [String]
      required :amount, String

      # @!attribute chain
      #   Supported blockchain chains for onramp and offramp.
      #
      #   @return [Symbol, Privy::Models::OnrampChain]
      required :chain, enum: -> { Privy::OnrampChain }

      # @!attribute currency
      #   Supported crypto assets for onramp and offramp.
      #
      #   @return [Symbol, Privy::Models::OnrampAsset]
      required :currency, enum: -> { Privy::OnrampAsset }

      # @!attribute from_address
      #
      #   @return [String]
      required :from_address, String

      # @!attribute to_address
      #
      #   @return [String]
      required :to_address, String

      # @!method initialize(amount:, chain:, currency:, from_address:, to_address:)
      #   Deposit instructions for an offramp transfer.
      #
      #   @param amount [String]
      #
      #   @param chain [Symbol, Privy::Models::OnrampChain] Supported blockchain chains for onramp and offramp.
      #
      #   @param currency [Symbol, Privy::Models::OnrampAsset] Supported crypto assets for onramp and offramp.
      #
      #   @param from_address [String]
      #
      #   @param to_address [String]
    end
  end
end
