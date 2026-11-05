# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfUserRegistration < Privy::Internal::Type::BaseModel
        # @!attribute provider
        #   The fund provider.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::TmmfProvider]
        required :provider, union: -> { Privy::Wallets::TmmfProvider }

        # @!attribute status
        #   A user's registration status with a tMMF provider, read live from the provider.
        #
        #   @return [Symbol, String, Privy::Models::Wallets::TmmfRegistrationStatus]
        required :status, union: -> { Privy::Wallets::TmmfRegistrationStatus }

        # @!method initialize(provider:, status:)
        #   A user's registration with one tMMF provider.
        #
        #   @param provider [Symbol, String, Privy::Models::Wallets::TmmfProvider] The fund provider.
        #
        #   @param status [Symbol, String, Privy::Models::Wallets::TmmfRegistrationStatus] A user's registration status with a tMMF provider, read live from the provider.
      end
    end
  end
end
