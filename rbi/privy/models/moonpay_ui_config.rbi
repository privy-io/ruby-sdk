# typed: strong

module Privy
  module Models
    class MoonpayUiConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::MoonpayUiConfig, Privy::Internal::AnyHash) }

      sig { returns(T.nilable(String)) }
      attr_reader :accent_color

      sig { params(accent_color: String).void }
      attr_writer :accent_color

      # The theme for the Moonpay on-ramp widget.
      sig { returns(T.nilable(Privy::MoonpayUiTheme::OrSymbol)) }
      attr_reader :theme

      sig { params(theme: Privy::MoonpayUiTheme::OrSymbol).void }
      attr_writer :theme

      # UI configuration for the Moonpay on-ramp widget.
      sig do
        params(
          accent_color: String,
          theme: Privy::MoonpayUiTheme::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        accent_color: nil,
        # The theme for the Moonpay on-ramp widget.
        theme: nil
      )
      end

      sig do
        override.returns(
          { accent_color: String, theme: Privy::MoonpayUiTheme::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
