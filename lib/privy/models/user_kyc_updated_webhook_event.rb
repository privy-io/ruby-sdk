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

      # @!method initialize(changes:, data:, environment:, provider:, type:, user_id:)
      #   @param changes [Hash{Symbol=>Array<Object>}]
      #
      #   @param data [Privy::Models::UserKYCUpdatedData] Full KYC state snapshot in a KYC update event.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
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
