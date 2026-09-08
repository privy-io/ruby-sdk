# frozen_string_literal: true

module Privy
  module Models
    # Tron CAIP-2 chain identifier. Supported values: "tron:mainnet", "tron:nile".
    module TronCaip2
      extend Privy::Internal::Type::Enum

      TRON_MAINNET = :"tron:mainnet"
      TRON_NILE = :"tron:nile"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
