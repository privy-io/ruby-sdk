# frozen_string_literal: true

module Privy
  module Models
    class PrivateKeyExportWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::PrivateKeyExportWebhookPayload::Type]
      required :type, enum: -> { Privy::PrivateKeyExportWebhookPayload::Type }

      # @!attribute user_id
      #   The ID of the user who exported the key.
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

      # @!method initialize(type:, user_id:, wallet_address:, wallet_id:, export_source: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PrivateKeyExportWebhookPayload} for more details.
      #
      #   Payload for the wallet.private_key_export webhook event.
      #
      #   @param type [Symbol, Privy::Models::PrivateKeyExportWebhookPayload::Type] The type of webhook event.
      #
      #   @param user_id [String] The ID of the user who exported the key.
      #
      #   @param wallet_address [String] The address of the wallet.
      #
      #   @param wallet_id [String] The ID of the wallet.
      #
      #   @param export_source [Symbol, Privy::Models::ExportType] The export type. 'display' is for showing the key to the user in the UI, 'client

      # The type of webhook event.
      #
      # @see Privy::Models::PrivateKeyExportWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_PRIVATE_KEY_EXPORT = :"wallet.private_key_export"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
