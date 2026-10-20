# frozen_string_literal: true

module Privy
  module Models
    class AccountWalletConfigurationItem < Privy::Internal::Type::BaseModel
      # @!attribute chain_type
      #   The wallet chain types supported in digital asset accounts.
      #
      #   @return [Symbol, String, Privy::Models::AccountWalletChainType]
      required :chain_type, union: -> { Privy::AccountWalletChainType }

      # @!method initialize(chain_type:)
      #   Configuration for a wallet to create within an account.
      #
      #   @param chain_type [Symbol, String, Privy::Models::AccountWalletChainType] The wallet chain types supported in digital asset accounts.
    end
  end
end
