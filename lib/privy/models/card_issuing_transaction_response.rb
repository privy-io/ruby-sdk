# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingTransactionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute amount
      #
      #   @return [Float]
      required :amount, Float

      # @!attribute created
      #
      #   @return [Float]
      required :created, Float

      # @!attribute currency
      #
      #   @return [String]
      required :currency, String

      # @!attribute merchant
      #   Merchant metadata for a card issuing transaction.
      #
      #   @return [Privy::Models::CardIssuingMerchant]
      required :merchant, -> { Privy::CardIssuingMerchant }

      # @!attribute status
      #   Status for a card issuing transaction.
      #
      #   @return [Symbol, Privy::Models::CardIssuingTransactionStatus]
      required :status, enum: -> { Privy::CardIssuingTransactionStatus }

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!method initialize(id:, amount:, created:, currency:, merchant:, status:, type:)
      #   Stripe Issuing transaction state for a Privy card.
      #
      #   @param id [String]
      #
      #   @param amount [Float]
      #
      #   @param created [Float]
      #
      #   @param currency [String]
      #
      #   @param merchant [Privy::Models::CardIssuingMerchant] Merchant metadata for a card issuing transaction.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingTransactionStatus] Status for a card issuing transaction.
      #
      #   @param type [String]
    end
  end
end
