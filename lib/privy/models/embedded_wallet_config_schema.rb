# frozen_string_literal: true

module Privy
  module Models
    class EmbeddedWalletConfigSchema < Privy::Models::EmbeddedWalletInputSchema
      # @!attribute mode
      #   The mode for embedded wallets.
      #
      #   @return [Symbol, Privy::Models::EmbeddedWalletMode]
      required :mode, enum: -> { Privy::EmbeddedWalletMode }

      # @!method initialize(mode:)
      #   Configuration for embedded wallets including the mode.
      #
      #   @param mode [Symbol, Privy::Models::EmbeddedWalletMode] The mode for embedded wallets.
    end
  end
end
