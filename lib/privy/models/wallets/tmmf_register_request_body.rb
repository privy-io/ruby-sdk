# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfRegisterRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute chain
        #   Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @return [String]
        required :chain, String

        # @!attribute provider
        #   The fund provider.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::TmmfProvider]
        required :provider, union: -> { Privy::Wallets::TmmfProvider }

        # @!method initialize(chain:, provider:)
        #   Request body for registering a wallet with a tMMF provider for the wallet's
        #   user, e.g. an organization.
        #
        #   @param chain [String] Chain the fund is held on, e.g. "ethereum_sepolia".
        #
        #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
      end
    end
  end
end
