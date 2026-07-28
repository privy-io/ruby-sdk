# frozen_string_literal: true

module Privy
  module Models
    # Supported crypto assets for onramp and offramp.
    module OnrampAsset
      extend Privy::Internal::Type::Enum

      USDC = :usdc

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
