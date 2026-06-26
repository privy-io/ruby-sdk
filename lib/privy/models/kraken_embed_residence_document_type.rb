# frozen_string_literal: true

module Privy
  module Models
    # Document types accepted for proof of address verification.
    module KrakenEmbedResidenceDocumentType
      extend Privy::Internal::Type::Enum

      BANK_STATEMENT = :bank_statement
      CREDIT_CARD_STATEMENT = :credit_card_statement
      EMPLOYER_LETTER_OR_WORK_CONTRACT = :employer_letter_or_work_contract
      GOVERNMENT_ISSUED_DOCUMENT = :government_issued_document
      HOME_OR_RENTAL_INSURANCE = :home_or_rental_insurance
      INTERNET_OR_CABLE_BILL = :internet_or_cable_bill
      MOBILE_PHONE_BILL = :mobile_phone_bill
      MORTGAGE_STATEMENT = :mortgage_statement
      OFFICIAL_GOVERNMENT_LETTER = :official_government_letter
      PASSPORT_ADDRESS_PAGE = :passport_address_page
      RENTAL_OR_LEASE_AGREEMENT = :rental_or_lease_agreement
      RESIDENCE_CERTIFICATE = :residence_certificate
      SOCIAL_INSURANCE_PAYMENT_RECEIPT = :social_insurance_payment_receipt
      TAX_RECEIPT = :tax_receipt
      TAX_RETURN = :tax_return
      UTILITY_BILL = :utility_bill
      OTHER = :other

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
