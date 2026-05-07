# frozen_string_literal: true

module Privy
  module Models
    # The theme for the Moonpay on-ramp widget.
    module MoonpayUiTheme
      extend Privy::Internal::Type::Enum

      LIGHT = :light
      DARK = :dark

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
