# frozen_string_literal: true

module Privy
  module Models
    # A funding method for on-ramp.
    module FundingMethodEnum
      extend Privy::Internal::Type::Enum

      MOONPAY = :moonpay
      COINBASE_ONRAMP = :"coinbase-onramp"
      EXTERNAL = :external

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
