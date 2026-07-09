# frozen_string_literal: true

module Privy
  module Models
    # Supported yield/lending protocol providers.
    module EthereumYieldProvider
      extend Privy::Internal::Type::Enum

      MORPHO = :morpho
      AAVE = :aave
      VEDA = :veda

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
