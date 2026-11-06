# frozen_string_literal: true

module Privy
  module Models
    class SeedPhraseExportWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::SeedPhraseExportWebhookPayload::Type]
      required :type, enum: -> { Privy::SeedPhraseExportWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user who exported the seed phrase.
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

      # @!attribute export_source
      #   The export type. 'display' is for showing the key to the user in the UI,
      #   'client' is for exporting to the client application.
      #
      #   @return [Symbol, Privy::Models::ExportType, nil]
      optional :export_source, enum: -> { Privy::ExportType }

      # @!method initialize(event_id:, type:, user_id:, wallet_address:, wallet_id:, export_source: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SeedPhraseExportWebhookPayload} for more details.
      #
      #   Payload for the wallet.seed_phrase_export webhook event.
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param type [Symbol, Privy::Models::SeedPhraseExportWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user who exported the seed phrase.
      #
      #   @param wallet_address [String] The address of the wallet.
      #
      #   @param wallet_id [String] The ID of the wallet.
      #
      #   @param export_source [Symbol, Privy::Models::ExportType] The export type. 'display' is for showing the key to the user in the UI, 'client

      # The type of webhook event.
      #
      # @see Privy::Models::SeedPhraseExportWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_SEED_PHRASE_EXPORT = :"wallet.seed_phrase_export"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
