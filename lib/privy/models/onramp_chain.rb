# frozen_string_literal: true

module Privy
  module Models
    # Supported blockchain chains for onramp and offramp.
    module OnrampChain
      extend Privy::Internal::Type::Enum

      ETHEREUM = :ethereum
      BASE = :base
      ARBITRUM = :arbitrum
      POLYGON = :polygon
      OPTIMISM = :optimism

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
