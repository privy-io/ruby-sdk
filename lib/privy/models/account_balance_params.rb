# frozen_string_literal: true

module Privy
  module Models
    class AccountBalanceParams < Privy::Internal::Type::BaseModel
      # @!attribute testnet_mode
      #   When set to true, returns balances from testnet chains instead of mainnets.
      #
      #   @return [Symbol, Privy::Models::ChainTestnetMode, nil]
      optional :testnet_mode, enum: -> { Privy::ChainTestnetMode }

      # @!method initialize(testnet_mode: nil)
      #   Query parameters for the account balance endpoint.
      #
      #   @param testnet_mode [Symbol, Privy::Models::ChainTestnetMode] When set to true, returns balances from testnet chains instead of mainnets.
    end
  end
end
