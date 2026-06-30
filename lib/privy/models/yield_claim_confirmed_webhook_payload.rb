# frozen_string_literal: true

module Privy
  module Models
    class YieldClaimConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #
      #   @return [String]
      required :caip2, String

      # @!attribute rewards
      #
      #   @return [Array<Privy::Models::YieldClaimReward>]
      required :rewards, -> { Privy::Internal::Type::ArrayOf[Privy::YieldClaimReward] }

      # @!attribute transaction_id
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::YieldClaimConfirmedWebhookPayload::Type]
      required :type, enum: -> { Privy::YieldClaimConfirmedWebhookPayload::Type }

      # @!attribute wallet_id
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(caip2:, rewards:, transaction_id:, type:, wallet_id:)
      #   Payload for the yield.claim.confirmed webhook event.
      #
      #   @param caip2 [String]
      #
      #   @param rewards [Array<Privy::Models::YieldClaimReward>]
      #
      #   @param transaction_id [String]
      #
      #   @param type [Symbol, Privy::Models::YieldClaimConfirmedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_id [String]

      # The type of webhook event.
      #
      # @see Privy::Models::YieldClaimConfirmedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        YIELD_CLAIM_CONFIRMED = :"yield.claim.confirmed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
