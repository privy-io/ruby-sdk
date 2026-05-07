# frozen_string_literal: true

module Privy
  module Models
    # The wallet chain types that offer first class support.
    module FirstClassChainType
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      SOLANA = :solana

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
