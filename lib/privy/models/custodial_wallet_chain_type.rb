# frozen_string_literal: true

module Privy
  module Models
    # The chain type of the custodial wallet (deprecated).
    module CustodialWalletChainType
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      SOLANA = :solana

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
