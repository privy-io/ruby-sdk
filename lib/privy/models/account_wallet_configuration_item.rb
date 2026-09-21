# frozen_string_literal: true

module Privy
  module Models
    class AccountWalletConfigurationItem < Privy::Internal::Type::BaseModel
      # @!attribute chain_type
      #   The wallet chain types that offer first class support.
      #
      #   @return [Symbol, Privy::Models::FirstClassChainType]
      required :chain_type, enum: -> { Privy::FirstClassChainType }

      # @!method initialize(chain_type:)
      #   Configuration for a wallet to create within an account.
      #
      #   @param chain_type [Symbol, Privy::Models::FirstClassChainType] The wallet chain types that offer first class support.
    end
  end
end
