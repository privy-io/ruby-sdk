# frozen_string_literal: true

module Privy
  module Models
    # The chain type of the wallet to import. Currently supports `ethereum` and
    # `solana`.
    module WalletImportSupportedChains
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      SOLANA = :solana

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
