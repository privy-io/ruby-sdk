# frozen_string_literal: true

module Privy
  module Models
    class VaultAsset < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   Token contract address.
      #
      #   @return [String]
      required :address, String

      # @!attribute symbol
      #   Token symbol (e.g., "USDC").
      #
      #   @return [String]
      required :symbol, String

      # @!method initialize(address:, symbol:)
      #   The underlying token of a vault position.
      #
      #   @param address [String] Token contract address.
      #
      #   @param symbol [String] Token symbol (e.g., "USDC").
    end
  end
end
