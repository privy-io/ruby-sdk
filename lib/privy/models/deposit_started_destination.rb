# frozen_string_literal: true

module Privy
  module Models
    class DepositStartedDestination < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   The crypto asset the deposit is converted into (e.g. "usdc").
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   The chain the converted crypto is delivered on (e.g. "base").
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(asset:, chain:)
      #   The crypto asset and chain the fiat deposit is being converted into.
      #
      #   @param asset [String] The crypto asset the deposit is converted into (e.g. "usdc").
      #
      #   @param chain [String] The chain the converted crypto is delivered on (e.g. "base").
    end
  end
end
