# frozen_string_literal: true

module Privy
  module Models
    class WalletRecoveredWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletRecoveredWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletRecoveredWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute wallet_address
      #   The address of the wallet.
      #
      #   @return [String]
      required :wallet_address, String

      # @!attribute wallet_id
      #   The ID of the wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(event_id:, type:, user_id:, wallet_address:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletRecoveredWebhookPayload} for more details.
      #
      #   Payload for the wallet.recovered webhook event.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param type [Symbol, Privy::Models::WalletRecoveredWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user.
      #
      #   @param wallet_address [String] The address of the wallet.
      #
      #   @param wallet_id [String] The ID of the wallet.

      # The type of webhook event.
      #
      # @see Privy::Models::WalletRecoveredWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_RECOVERED = :"wallet.recovered"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
