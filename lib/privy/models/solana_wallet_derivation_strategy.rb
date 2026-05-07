# frozen_string_literal: true

module Privy
  module Models
    # The derivation strategy used for Solana wallets.
    module SolanaWalletDerivationStrategy
      extend Privy::Internal::Type::Enum

      ENTROPY_TO_SEED = :ENTROPY_TO_SEED
      ENTROPY_TO_MNEMONIC_TO_SEED = :ENTROPY_TO_MNEMONIC_TO_SEED

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
