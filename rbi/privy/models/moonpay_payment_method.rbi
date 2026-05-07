# typed: strong

module Privy
  module Models
    # A payment method supported by Moonpay on-ramp.
    module MoonpayPaymentMethod
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::MoonpayPaymentMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH_BANK_TRANSFER =
        T.let(:ach_bank_transfer, Privy::MoonpayPaymentMethod::TaggedSymbol)
      CREDIT_DEBIT_CARD =
        T.let(:credit_debit_card, Privy::MoonpayPaymentMethod::TaggedSymbol)
      GBP_BANK_TRANSFER =
        T.let(:gbp_bank_transfer, Privy::MoonpayPaymentMethod::TaggedSymbol)
      GBP_OPEN_BANKING_PAYMENT =
        T.let(
          :gbp_open_banking_payment,
          Privy::MoonpayPaymentMethod::TaggedSymbol
        )
      MOBILE_WALLET =
        T.let(:mobile_wallet, Privy::MoonpayPaymentMethod::TaggedSymbol)
      SEPA_BANK_TRANSFER =
        T.let(:sepa_bank_transfer, Privy::MoonpayPaymentMethod::TaggedSymbol)
      SEPA_OPEN_BANKING_PAYMENT =
        T.let(
          :sepa_open_banking_payment,
          Privy::MoonpayPaymentMethod::TaggedSymbol
        )
      PIX_INSTANT_PAYMENT =
        T.let(:pix_instant_payment, Privy::MoonpayPaymentMethod::TaggedSymbol)
      YELLOW_CARD_BANK_TRANSFER =
        T.let(
          :yellow_card_bank_transfer,
          Privy::MoonpayPaymentMethod::TaggedSymbol
        )

      sig do
        override.returns(T::Array[Privy::MoonpayPaymentMethod::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
