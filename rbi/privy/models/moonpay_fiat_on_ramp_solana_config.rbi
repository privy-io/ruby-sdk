# typed: strong

module Privy
  module Models
    class MoonpayFiatOnRampSolanaConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MoonpayFiatOnRampSolanaConfig, Privy::Internal::AnyHash)
        end

      # A Moonpay currency code for a Solana asset.
      sig { returns(T.nilable(Privy::MoonpaySolanaCurrencyCode::OrSymbol)) }
      attr_reader :currency_code

      sig do
        params(currency_code: Privy::MoonpaySolanaCurrencyCode::OrSymbol).void
      end
      attr_writer :currency_code

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # A payment method supported by Moonpay on-ramp.
      sig { returns(T.nilable(Privy::MoonpayPaymentMethod::OrSymbol)) }
      attr_reader :payment_method

      sig { params(payment_method: Privy::MoonpayPaymentMethod::OrSymbol).void }
      attr_writer :payment_method

      sig { returns(T.nilable(Float)) }
      attr_reader :quote_currency_amount

      sig { params(quote_currency_amount: Float).void }
      attr_writer :quote_currency_amount

      # UI configuration for the Moonpay on-ramp widget.
      sig { returns(T.nilable(Privy::MoonpayUiConfig)) }
      attr_reader :ui_config

      sig { params(ui_config: Privy::MoonpayUiConfig::OrHash).void }
      attr_writer :ui_config

      # Configuration for a Moonpay fiat on-ramp for Solana.
      sig do
        params(
          currency_code: Privy::MoonpaySolanaCurrencyCode::OrSymbol,
          email: String,
          payment_method: Privy::MoonpayPaymentMethod::OrSymbol,
          quote_currency_amount: Float,
          ui_config: Privy::MoonpayUiConfig::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A Moonpay currency code for a Solana asset.
        currency_code: nil,
        email: nil,
        # A payment method supported by Moonpay on-ramp.
        payment_method: nil,
        quote_currency_amount: nil,
        # UI configuration for the Moonpay on-ramp widget.
        ui_config: nil
      )
      end

      sig do
        override.returns(
          {
            currency_code: Privy::MoonpaySolanaCurrencyCode::OrSymbol,
            email: String,
            payment_method: Privy::MoonpayPaymentMethod::OrSymbol,
            quote_currency_amount: Float,
            ui_config: Privy::MoonpayUiConfig
          }
        )
      end
      def to_hash
      end
    end
  end
end
