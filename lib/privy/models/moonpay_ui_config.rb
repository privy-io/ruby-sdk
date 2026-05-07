# frozen_string_literal: true

module Privy
  module Models
    class MoonpayUiConfig < Privy::Internal::Type::BaseModel
      # @!attribute accent_color
      #
      #   @return [String, nil]
      optional :accent_color, String, api_name: :accentColor

      # @!attribute theme
      #   The theme for the Moonpay on-ramp widget.
      #
      #   @return [Symbol, Privy::Models::MoonpayUiTheme, nil]
      optional :theme, enum: -> { Privy::MoonpayUiTheme }

      # @!method initialize(accent_color: nil, theme: nil)
      #   UI configuration for the Moonpay on-ramp widget.
      #
      #   @param accent_color [String]
      #
      #   @param theme [Symbol, Privy::Models::MoonpayUiTheme] The theme for the Moonpay on-ramp widget.
    end
  end
end
