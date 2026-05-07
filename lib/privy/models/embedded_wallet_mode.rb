# frozen_string_literal: true

module Privy
  module Models
    # The mode for embedded wallets.
    module EmbeddedWalletMode
      extend Privy::Internal::Type::Enum

      LEGACY_EMBEDDED_WALLETS_ONLY = :"legacy-embedded-wallets-only"
      USER_CONTROLLED_SERVER_WALLETS_ONLY = :"user-controlled-server-wallets-only"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
