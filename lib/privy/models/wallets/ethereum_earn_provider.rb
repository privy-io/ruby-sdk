# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Supported earn provider protocols.
      module EthereumEarnProvider
        extend Privy::Internal::Type::Enum

        MORPHO = :morpho
        AAVE = :aave

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
