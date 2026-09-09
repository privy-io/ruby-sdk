# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Whether an APY allocation earns the base or boosted rate.
      module EarnPositionApyType
        extend Privy::Internal::Type::Enum

        BOOST = :boost
        BASE = :base

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
