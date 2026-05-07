# frozen_string_literal: true

module Privy
  module Models
    class SeedPhraseExportWebhookPayload < Privy::Internal::Type::BaseModel
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
      #
      #   @return [Symbol, Privy::Models::SeedPhraseExportWebhookPayload::ExportSource, nil]
      optional :export_source, enum: -> { Privy::SeedPhraseExportWebhookPayload::ExportSource }

      # @!method initialize(type:, user_id:, wallet_address:, wallet_id:, export_source: nil)
      #   Payload for the wallet.seed_phrase_export webhook event.
      #
      #   @param type [Symbol, Privy::Models::SeedPhraseExportWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user who exported the seed phrase.
      #
      #   @param wallet_address [String] The address of the wallet.
      #
      #   @param wallet_id [String] The ID of the wallet.
      #
      #   @param export_source [Symbol, Privy::Models::SeedPhraseExportWebhookPayload::ExportSource]

      # The type of webhook event.
      #
      # @see Privy::Models::SeedPhraseExportWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_SEED_PHRASE_EXPORT = :"wallet.seed_phrase_export"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::SeedPhraseExportWebhookPayload#export_source
      module ExportSource
        extend Privy::Internal::Type::Enum

        DISPLAY = :display
        CLIENT = :client

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
