# frozen_string_literal: true

module Privy
  module Models
    class WalletRestoredWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute chain_type
      #   The chain type of the restored wallet.
      #
      #   @return [String]
      required :chain_type, String

      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletRestoredWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletRestoredWebhookPayload::Type }

      # @!attribute wallet_address
      #   The address of the restored wallet.
      #
      #   @return [String]
      required :wallet_address, String

      # @!attribute wallet_id
      #   The ID of the restored wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(chain_type:, event_id:, type:, wallet_address:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletRestoredWebhookPayload} for more details.
      #
      #   Payload for the wallet.restored webhook event.
      #
      #   @param chain_type [String] The chain type of the restored wallet.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param type [Symbol, Privy::Models::WalletRestoredWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_address [String] The address of the restored wallet.
      #
      #   @param wallet_id [String] The ID of the restored wallet.

      # The type of webhook event.
      #
      # @see Privy::Models::WalletRestoredWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_RESTORED = :"wallet.restored"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
