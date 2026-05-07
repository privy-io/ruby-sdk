# frozen_string_literal: true

module Privy
  module Models
    class EmbeddedWalletChainConfig < Privy::Internal::Type::BaseModel
      # @!attribute create_on_login
      #   Whether to create embedded wallets on login.
      #
      #   @return [Symbol, Privy::Models::EmbeddedWalletCreateOnLogin]
      required :create_on_login, enum: -> { Privy::EmbeddedWalletCreateOnLogin }

      # @!method initialize(create_on_login:)
      #   Chain-specific configuration for embedded wallets.
      #
      #   @param create_on_login [Symbol, Privy::Models::EmbeddedWalletCreateOnLogin] Whether to create embedded wallets on login.
    end
  end
end
