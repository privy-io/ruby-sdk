# frozen_string_literal: true

module Privy
  module Models
    # Whether to create embedded wallets on login.
    module EmbeddedWalletCreateOnLogin
      extend Privy::Internal::Type::Enum

      USERS_WITHOUT_WALLETS = :"users-without-wallets"
      ALL_USERS = :"all-users"
      OFF = :off

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
