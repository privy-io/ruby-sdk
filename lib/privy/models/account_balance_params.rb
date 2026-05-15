# frozen_string_literal: true

module Privy
  module Models
    class AccountBalanceParams < Privy::Internal::Type::BaseModel
      # @!attribute testnet_mode
      #   When set to true, returns balances from testnet chains instead of mainnets.
      #
      #   @return [Symbol, Privy::Models::AccountBalanceParams::TestnetMode, nil]
      optional :testnet_mode, enum: -> { Privy::AccountBalanceParams::TestnetMode }

      # @!method initialize(testnet_mode: nil)
      #   Query parameters for the account balance endpoint.
      #
      #   @param testnet_mode [Symbol, Privy::Models::AccountBalanceParams::TestnetMode] When set to true, returns balances from testnet chains instead of mainnets.

      # When set to true, returns balances from testnet chains instead of mainnets.
      #
      # @see Privy::Models::AccountBalanceParams#testnet_mode
      module TestnetMode
        extend Privy::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
