# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # How a tMMF order fills: `secondary` from the provider pool in minutes, or
      # `primary` at the next NAV strike.
      module TmmfOrderType
        extend Privy::Internal::Type::Enum

        PRIMARY = :primary
        SECONDARY = :secondary

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
