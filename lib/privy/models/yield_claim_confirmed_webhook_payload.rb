# frozen_string_literal: true

module Privy
  module Models
    class YieldClaimConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #
      #   @return [String]
      required :caip2, String

      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

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

      # @!method initialize(caip2:, event_id:, rewards:, transaction_id:, type:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::YieldClaimConfirmedWebhookPayload} for more details.
      #
      #   Payload for the yield.claim.confirmed webhook event.
      #
      #   @param caip2 [String]
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
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
