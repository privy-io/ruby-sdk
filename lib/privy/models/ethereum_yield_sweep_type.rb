# frozen_string_literal: true

module Privy
  module Models
    # Type of yield sweep.
    module EthereumYieldSweepType
      extend Privy::Internal::Type::Enum

      DEPOSIT = :deposit
      WITHDRAW = :withdraw

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
