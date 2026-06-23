# frozen_string_literal: true

module Privy
  module Models
    # When set to true, returns balances from testnet chains instead of mainnets.
    module ChainTestnetMode
      extend Privy::Internal::Type::Enum

      TRUE = :true
      FALSE = :false

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
