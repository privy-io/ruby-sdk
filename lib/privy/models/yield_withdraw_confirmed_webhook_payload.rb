# frozen_string_literal: true

module Privy
  module Models
    class YieldWithdrawConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #
      #   @return [String]
      required :assets, String

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

      # @!attribute owner
      #
      #   @return [String]
      required :owner, String

      # @!attribute receiver
      #
      #   @return [String]
      required :receiver, String

      # @!attribute sender
      #
      #   @return [String]
      required :sender, String

      # @!attribute shares
      #
      #   @return [String]
      required :shares, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::YieldWithdrawConfirmedWebhookPayload::Type]
      required :type, enum: -> { Privy::YieldWithdrawConfirmedWebhookPayload::Type }

      # @!attribute vault_address
      #
      #   @return [String]
      required :vault_address, String

      # @!method initialize(assets:, caip2:, event_id:, owner:, receiver:, sender:, shares:, type:, vault_address:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::YieldWithdrawConfirmedWebhookPayload} for more details.
      #
      #   Payload for the yield.withdraw.confirmed webhook event.
      #
      #   @param assets [String]
      #
      #   @param caip2 [String]
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param owner [String]
      #
      #   @param receiver [String]
      #
      #   @param sender [String]
      #
      #   @param shares [String]
      #
      #   @param type [Symbol, Privy::Models::YieldWithdrawConfirmedWebhookPayload::Type] The type of webhook event.
      #
      #   @param vault_address [String]

      # The type of webhook event.
      #
      # @see Privy::Models::YieldWithdrawConfirmedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        YIELD_WITHDRAW_CONFIRMED = :"yield.withdraw.confirmed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
