# frozen_string_literal: true

module Privy
  module Models
    class PayoutSource < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount to offramp, in the asset's standard units (e.g. "100.00").
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset
      #   Source crypto asset (e.g. "usdc").
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   Source chain (e.g. "base").
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(amount:, asset:, chain:)
      #   The source crypto asset, chain, and amount for a payout.
      #
      #   @param amount [String] Amount to offramp, in the asset's standard units (e.g. "100.00").
      #
      #   @param asset [String] Source crypto asset (e.g. "usdc").
      #
      #   @param chain [String] Source chain (e.g. "base").
    end
  end
end
