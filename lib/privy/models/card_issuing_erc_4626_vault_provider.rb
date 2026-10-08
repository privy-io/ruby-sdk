# frozen_string_literal: true

module Privy
  module Models
    # Earn provider of an ERC-4626 vault a card can spend.
    module CardIssuingErc4626VaultProvider
      extend Privy::Internal::Type::Enum

      MORPHO = :morpho
      AAVE = :aave

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
