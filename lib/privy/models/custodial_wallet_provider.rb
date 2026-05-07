# frozen_string_literal: true

module Privy
  module Models
    # The provider of the custodial wallet.
    module CustodialWalletProvider
      extend Privy::Internal::Type::Enum

      BRIDGE = :bridge

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
