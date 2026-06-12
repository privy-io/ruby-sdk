# frozen_string_literal: true

module Privy
  module Models
    class WalletArchivedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute archived_at
      #   Unix timestamp of when the wallet was archived.
      #
      #   @return [Float]
      required :archived_at, Float

      # @!attribute chain_type
      #   The chain type of the archived wallet.
      #
      #   @return [String]
      required :chain_type, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::WalletArchivedWebhookPayload::Type]
      required :type, enum: -> { Privy::WalletArchivedWebhookPayload::Type }

      # @!attribute wallet_address
      #   The address of the archived wallet.
      #
      #   @return [String]
      required :wallet_address, String

      # @!attribute wallet_id
      #   The ID of the archived wallet.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(archived_at:, chain_type:, type:, wallet_address:, wallet_id:)
      #   Payload for the wallet.archived webhook event.
      #
      #   @param archived_at [Float] Unix timestamp of when the wallet was archived.
      #
      #   @param chain_type [String] The chain type of the archived wallet.
      #
      #   @param type [Symbol, Privy::Models::WalletArchivedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_address [String] The address of the archived wallet.
      #
      #   @param wallet_id [String] The ID of the archived wallet.

      # The type of webhook event.
      #
      # @see Privy::Models::WalletArchivedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET_ARCHIVED = :"wallet.archived"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
