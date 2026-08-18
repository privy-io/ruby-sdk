# frozen_string_literal: true

module Privy
  module Models
    # Supported XRPL transaction field paths for policy conditions.
    module XrplTransactionConditionField
      extend Privy::Internal::Type::Enum

      TRANSACTION_TYPE = :TransactionType
      PAYMENT_DESTINATION = :"Payment.Destination"
      PAYMENT_DESTINATION_TAG = :"Payment.DestinationTag"
      PAYMENT_AMOUNT_DROPS = :"Payment.Amount.drops"
      PAYMENT_AMOUNT_VALUE = :"Payment.Amount.value"
      PAYMENT_AMOUNT_CURRENCY = :"Payment.Amount.currency"
      PAYMENT_AMOUNT_ISSUER = :"Payment.Amount.issuer"
      PAYMENT_SEND_MAX_DROPS = :"Payment.SendMax.drops"
      PAYMENT_SEND_MAX_VALUE = :"Payment.SendMax.value"
      PAYMENT_SEND_MAX_CURRENCY = :"Payment.SendMax.currency"
      PAYMENT_SEND_MAX_ISSUER = :"Payment.SendMax.issuer"
      PAYMENT_DELIVER_MIN_DROPS = :"Payment.DeliverMin.drops"
      PAYMENT_DELIVER_MIN_VALUE = :"Payment.DeliverMin.value"
      PAYMENT_DELIVER_MIN_CURRENCY = :"Payment.DeliverMin.currency"
      PAYMENT_DELIVER_MIN_ISSUER = :"Payment.DeliverMin.issuer"
      OFFER_CREATE_TAKER_PAYS_DROPS = :"OfferCreate.TakerPays.drops"
      OFFER_CREATE_TAKER_PAYS_VALUE = :"OfferCreate.TakerPays.value"
      OFFER_CREATE_TAKER_PAYS_CURRENCY = :"OfferCreate.TakerPays.currency"
      OFFER_CREATE_TAKER_PAYS_ISSUER = :"OfferCreate.TakerPays.issuer"
      OFFER_CREATE_TAKER_GETS_DROPS = :"OfferCreate.TakerGets.drops"
      OFFER_CREATE_TAKER_GETS_VALUE = :"OfferCreate.TakerGets.value"
      OFFER_CREATE_TAKER_GETS_CURRENCY = :"OfferCreate.TakerGets.currency"
      OFFER_CREATE_TAKER_GETS_ISSUER = :"OfferCreate.TakerGets.issuer"
      OFFER_CREATE_EXPIRATION = :"OfferCreate.Expiration"
      TRUST_SET_LIMIT_AMOUNT_VALUE = :"TrustSet.LimitAmount.value"
      TRUST_SET_LIMIT_AMOUNT_CURRENCY = :"TrustSet.LimitAmount.currency"
      TRUST_SET_LIMIT_AMOUNT_ISSUER = :"TrustSet.LimitAmount.issuer"
      TRUST_SET_QUALITY_IN = :"TrustSet.QualityIn"
      TRUST_SET_QUALITY_OUT = :"TrustSet.QualityOut"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
