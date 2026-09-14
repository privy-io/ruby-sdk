# frozen_string_literal: true

module Privy
  module Models
    # The chain of the custodial wallet.
    module CustodialWalletChain
      extend Privy::Internal::Type::Enum

      BASE = :base
      SOLANA = :solana
      TEMPO = :tempo

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
