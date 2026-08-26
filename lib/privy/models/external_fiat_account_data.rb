# frozen_string_literal: true

module Privy
  module Models
    # Bank account details. The `type` field discriminates which shape applies.
    module ExternalFiatAccountData
      extend Privy::Internal::Type::Union

      discriminator :type

      # US bank account data for an external fiat account.
      variant :us, -> { Privy::ExternalFiatAccountUsData }

      # UK bank account data for an external fiat account. Pays out over Faster Payments.
      variant :gb, -> { Privy::ExternalFiatAccountGBData }

      # Brazilian Pix account data for an external fiat account. Provide exactly one of `pix_key` or `br_code`.
      variant :pix, -> { Privy::ExternalFiatAccountPixData }

      # IBAN bank account data for an external fiat account. Pays out over SEPA.
      variant :iban, -> { Privy::ExternalFiatAccountIbanData }

      # SWIFT bank account data for an external fiat account. Pays out over wire. The beneficiary address is required for SWIFT and is supplied as the request's top-level `address`.
      variant :swift, -> { Privy::ExternalFiatAccountSwiftData }

      # @!method self.variants
      #   @return [Array(Privy::Models::ExternalFiatAccountUsData, Privy::Models::ExternalFiatAccountGBData, Privy::Models::ExternalFiatAccountPixData, Privy::Models::ExternalFiatAccountIbanData, Privy::Models::ExternalFiatAccountSwiftData)]
    end
  end
end
