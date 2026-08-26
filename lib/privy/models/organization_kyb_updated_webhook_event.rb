# frozen_string_literal: true

module Privy
  module Models
    class OrganizationKYBUpdatedWebhookEvent < Privy::Internal::Type::BaseModel
      # @!attribute changes
      #
      #   @return [Hash{Symbol=>Array<Object>}]
      required :changes,
               Privy::Internal::Type::HashOf[Privy::Internal::Type::ArrayOf[Privy::Internal::Type::Unknown]]

      # @!attribute data
      #   Full KYB state snapshot in a KYB update event.
      #
      #   @return [Privy::Models::OrganizationKYBUpdatedData]
      required :data, -> { Privy::OrganizationKYBUpdatedData }

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment]
      required :environment, enum: -> { Privy::KyxEnvironment }

      # @!attribute organization_id
      #
      #   @return [String]
      required :organization_id, String

      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::OrganizationKYBUpdatedWebhookEvent::Type]
      required :type, enum: -> { Privy::OrganizationKYBUpdatedWebhookEvent::Type }

      # @!method initialize(changes:, data:, environment:, organization_id:, provider:, type:)
      #   @param changes [Hash{Symbol=>Array<Object>}]
      #
      #   @param data [Privy::Models::OrganizationKYBUpdatedData] Full KYB state snapshot in a KYB update event.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
      #
      #   @param organization_id [String]
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param type [Symbol, Privy::Models::OrganizationKYBUpdatedWebhookEvent::Type] The type of webhook event.

      # The type of webhook event.
      #
      # @see Privy::Models::OrganizationKYBUpdatedWebhookEvent#type
      module Type
        extend Privy::Internal::Type::Enum

        ORGANIZATION_KYB_UPDATED = :"organization.kyb.updated"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
