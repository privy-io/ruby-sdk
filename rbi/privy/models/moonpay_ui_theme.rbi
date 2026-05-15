# typed: strong

module Privy
  module Models
    # The theme for the Moonpay on-ramp widget.
    module MoonpayUiTheme
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::MoonpayUiTheme) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      LIGHT = T.let(:light, Privy::MoonpayUiTheme::TaggedSymbol)
      DARK = T.let(:dark, Privy::MoonpayUiTheme::TaggedSymbol)

      sig { override.returns(T::Array[Privy::MoonpayUiTheme::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
