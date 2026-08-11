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

      # @!attribute dispute
      #   Dispute associated with card activity.
      #
      #   @return [Privy::Models::CardIssuingDispute, nil]
      required :dispute, -> { Privy::CardIssuingDispute }, nil?: true

      # @!attribute merchant
      #   Merchant metadata for card activity.
      #
      #   @return [Privy::Models::CardIssuingMerchant]
      required :merchant, -> { Privy::CardIssuingMerchant }

      # @!attribute status
      #   Status for card activity.
      #
      #   @return [Symbol, Privy::Models::CardIssuingTransactionStatus]
      required :status, enum: -> { Privy::CardIssuingTransactionStatus }

      # @!method initialize(id:, amount:, created:, currency:, dispute:, merchant:, status:)
      #   Card activity
      #
      #   @param id [String]
      #
      #   @param amount [Float]
      #
      #   @param created [Float]
      #
      #   @param currency [String]
      #
      #   @param dispute [Privy::Models::CardIssuingDispute, nil] Dispute associated with card activity.
      #
      #   @param merchant [Privy::Models::CardIssuingMerchant] Merchant metadata for card activity.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingTransactionStatus] Status for card activity.
    end
  end
end
