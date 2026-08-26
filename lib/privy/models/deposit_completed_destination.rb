# frozen_string_literal: true

module Privy
  module Models
    class DepositCompletedDestination < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   The crypto amount delivered to the wallet, after conversion and fees.
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #   The crypto asset the deposit was converted into (e.g. "usdc").
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   The chain the converted crypto was delivered on (e.g. "base").
      #
      #   @return [String]
      required :chain, String

      # @!attribute transaction_hash
      #   The on-chain settlement transaction for the delivered crypto.
      #
      #   @return [String]
      required :transaction_hash, String

      # @!method initialize(amount:, asset:, chain:, transaction_hash:)
      #   The crypto asset, chain, delivered amount, and settlement transaction for a
      #   completed deposit.
      #
      #   @param amount [String] The crypto amount delivered to the wallet, after conversion and fees.
      #
      #   @param asset [String] The crypto asset the deposit was converted into (e.g. "usdc").
      #
      #   @param chain [String] The chain the converted crypto was delivered on (e.g. "base").
      #
      #   @param transaction_hash [String] The on-chain settlement transaction for the delivered crypto.
    end
  end
end
