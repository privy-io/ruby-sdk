# frozen_string_literal: true

module Privy
  module Models
    # Bridge provider variant — production or sandbox.
    module BridgeOnrampProvider
      extend Privy::Internal::Type::Enum

      BRIDGE = :bridge
      BRIDGE_SANDBOX = :"bridge-sandbox"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
