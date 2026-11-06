# frozen_string_literal: true

module Privy
  module Models
    class UserKYCUpdatedWebhookEvent < Privy::Internal::Type::BaseModel
      # @!attribute changes
      #
      #   @return [Hash{Symbol=>Array<Object>}]
      required :changes,
               Privy::Internal::Type::HashOf[Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]]

      # @!attribute data
      #   Full KYC state snapshot in a KYC update event.
      #
      #   @return [Privy::Models::UserKYCUpdatedData]
      required :data, -> { Privy::UserKYCUpdatedData }

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment]
      required :environment, enum: -> { Privy::KyxEnvironment }

      # @!attribute event_id
      #   The ID of this event, stable across repeat deliveries so clients can deduplicate
      #   on it.
      #
      #   @return [String]
      required :event_id, String

      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::UserKYCUpdatedWebhookEvent::Type]
      required :type, enum: -> { Privy::UserKYCUpdatedWebhookEvent::Type }

      # @!attribute user_id
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(changes:, data:, environment:, event_id:, provider:, type:, user_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::UserKYCUpdatedWebhookEvent} for more details.
      #
      #   @param changes [Hash{Symbol=>Array<Object>}]
      #
      #   @param data [Privy::Models::UserKYCUpdatedData] Full KYC state snapshot in a KYC update event.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
      #
      #   @param event_id [String] The ID of this event, stable across repeat deliveries so clients can deduplicate
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param type [Symbol, Privy::Models::UserKYCUpdatedWebhookEvent::Type] The type of webhook event.
      #
      #   @param user_id [String]

      # The type of webhook event.
      #
      # @see Privy::Models::UserKYCUpdatedWebhookEvent#type
      module Type
        extend Privy::Internal::Type::Enum

        USER_KYC_UPDATED = :"user.kyc.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
