# typed: strong

module Privy
  module Models
    # Supported XRPL transaction field paths for policy conditions.
    module XrplTransactionConditionField
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::XrplTransactionConditionField) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TRANSACTION_TYPE =
        T.let(
          :TransactionType,
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_DESTINATION =
        T.let(
          :"Payment.Destination",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_DESTINATION_TAG =
        T.let(
          :"Payment.DestinationTag",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_AMOUNT_DROPS =
        T.let(
          :"Payment.Amount.drops",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_AMOUNT_VALUE =
        T.let(
          :"Payment.Amount.value",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_AMOUNT_CURRENCY =
        T.let(
          :"Payment.Amount.currency",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_AMOUNT_ISSUER =
        T.let(
          :"Payment.Amount.issuer",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_SEND_MAX_DROPS =
        T.let(
          :"Payment.SendMax.drops",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_SEND_MAX_VALUE =
        T.let(
          :"Payment.SendMax.value",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_SEND_MAX_CURRENCY =
        T.let(
          :"Payment.SendMax.currency",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_SEND_MAX_ISSUER =
        T.let(
          :"Payment.SendMax.issuer",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_DELIVER_MIN_DROPS =
        T.let(
          :"Payment.DeliverMin.drops",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_DELIVER_MIN_VALUE =
        T.let(
          :"Payment.DeliverMin.value",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_DELIVER_MIN_CURRENCY =
        T.let(
          :"Payment.DeliverMin.currency",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      PAYMENT_DELIVER_MIN_ISSUER =
        T.let(
          :"Payment.DeliverMin.issuer",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_PAYS_DROPS =
        T.let(
          :"OfferCreate.TakerPays.drops",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_PAYS_VALUE =
        T.let(
          :"OfferCreate.TakerPays.value",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_PAYS_CURRENCY =
        T.let(
          :"OfferCreate.TakerPays.currency",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_PAYS_ISSUER =
        T.let(
          :"OfferCreate.TakerPays.issuer",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_GETS_DROPS =
        T.let(
          :"OfferCreate.TakerGets.drops",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_GETS_VALUE =
        T.let(
          :"OfferCreate.TakerGets.value",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_GETS_CURRENCY =
        T.let(
          :"OfferCreate.TakerGets.currency",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_TAKER_GETS_ISSUER =
        T.let(
          :"OfferCreate.TakerGets.issuer",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      OFFER_CREATE_EXPIRATION =
        T.let(
          :"OfferCreate.Expiration",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      TRUST_SET_LIMIT_AMOUNT_VALUE =
        T.let(
          :"TrustSet.LimitAmount.value",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      TRUST_SET_LIMIT_AMOUNT_CURRENCY =
        T.let(
          :"TrustSet.LimitAmount.currency",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      TRUST_SET_LIMIT_AMOUNT_ISSUER =
        T.let(
          :"TrustSet.LimitAmount.issuer",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      TRUST_SET_QUALITY_IN =
        T.let(
          :"TrustSet.QualityIn",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )
      TRUST_SET_QUALITY_OUT =
        T.let(
          :"TrustSet.QualityOut",
          Privy::XrplTransactionConditionField::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::XrplTransactionConditionField::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
