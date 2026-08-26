# frozen_string_literal: true

module Privy
  module Models
    class FiatDepositAccountDestination < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Destination crypto asset (e.g. "usdc").
      #
      #   @return [String]
      required :asset, String

      # @!attribute chain
      #   Destination chain (e.g. "base", "tempo").
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(asset:, chain:)
      #   The destination crypto asset and chain for a fiat deposit account.
      #
      #   @param asset [String] Destination crypto asset (e.g. "usdc").
      #
      #   @param chain [String] Destination chain (e.g. "base", "tempo").
    end
  end
end
