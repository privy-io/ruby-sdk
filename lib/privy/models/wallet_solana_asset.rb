# frozen_string_literal: true

module Privy
  module Models
    # A named asset on Solana.
    module WalletSolanaAsset
      extend Privy::Internal::Type::Enum

      SOL = :sol
      USDC = :usdc
      EURC = :eurc
      USDB = :usdb

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
