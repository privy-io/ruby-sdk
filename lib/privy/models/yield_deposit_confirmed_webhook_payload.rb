# frozen_string_literal: true

module Privy
  module Models
    class YieldDepositConfirmedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute assets
      #
      #   @return [String]
      required :assets, String

      # @!attribute caip2
      #
      #   @return [String]
      required :caip2, String

      # @!attribute owner
      #
      #   @return [String]
      required :owner, String

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
      #   @return [Symbol, Privy::Models::YieldDepositConfirmedWebhookPayload::Type]
      required :type, enum: -> { Privy::YieldDepositConfirmedWebhookPayload::Type }

      # @!attribute vault_address
      #
      #   @return [String]
      required :vault_address, String

      # @!method initialize(assets:, caip2:, owner:, sender:, shares:, type:, vault_address:)
      #   Payload for the yield.deposit.confirmed webhook event.
      #
      #   @param assets [String]
      #
      #   @param caip2 [String]
      #
      #   @param owner [String]
      #
      #   @param sender [String]
      #
      #   @param shares [String]
      #
      #   @param type [Symbol, Privy::Models::YieldDepositConfirmedWebhookPayload::Type] The type of webhook event.
      #
      #   @param vault_address [String]

      # The type of webhook event.
      #
      # @see Privy::Models::YieldDepositConfirmedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        YIELD_DEPOSIT_CONFIRMED = :"yield.deposit.confirmed"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
