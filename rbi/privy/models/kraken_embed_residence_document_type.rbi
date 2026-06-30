# typed: strong

module Privy
  module Models
    # Document types accepted for proof of address verification.
    module KrakenEmbedResidenceDocumentType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::KrakenEmbedResidenceDocumentType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      BANK_STATEMENT =
        T.let(
          :bank_statement,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      CREDIT_CARD_STATEMENT =
        T.let(
          :credit_card_statement,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      EMPLOYER_LETTER_OR_WORK_CONTRACT =
        T.let(
          :employer_letter_or_work_contract,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      GOVERNMENT_ISSUED_DOCUMENT =
        T.let(
          :government_issued_document,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      HOME_OR_RENTAL_INSURANCE =
        T.let(
          :home_or_rental_insurance,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      INTERNET_OR_CABLE_BILL =
        T.let(
          :internet_or_cable_bill,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      MOBILE_PHONE_BILL =
        T.let(
          :mobile_phone_bill,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      MORTGAGE_STATEMENT =
        T.let(
          :mortgage_statement,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      OFFICIAL_GOVERNMENT_LETTER =
        T.let(
          :official_government_letter,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      PASSPORT_ADDRESS_PAGE =
        T.let(
          :passport_address_page,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      RENTAL_OR_LEASE_AGREEMENT =
        T.let(
          :rental_or_lease_agreement,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      RESIDENCE_CERTIFICATE =
        T.let(
          :residence_certificate,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      SOCIAL_INSURANCE_PAYMENT_RECEIPT =
        T.let(
          :social_insurance_payment_receipt,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      TAX_RECEIPT =
        T.let(
          :tax_receipt,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      TAX_RETURN =
        T.let(
          :tax_return,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      UTILITY_BILL =
        T.let(
          :utility_bill,
          Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol
        )
      OTHER =
        T.let(:other, Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::KrakenEmbedResidenceDocumentType::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
