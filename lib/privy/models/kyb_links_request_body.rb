# frozen_string_literal: true

module Privy
  module Models
    class KYBLinksRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute email
      #   Email address for the organization.
      #
      #   @return [String]
      required :email, String

      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute business_name
      #   Legal name of the business.
      #
      #   @return [String, nil]
      optional :business_name, String

      # @!attribute client_agreement_id
      #   Client-side agreement ID for ToS acceptance.
      #
      #   @return [String, nil]
      optional :client_agreement_id, String

      # @!attribute endorsements
      #   Endorsements to request during KYB.
      #
      #   @return [Array<String>, nil]
      optional :endorsements, Privy::Internal::Type::ArrayOf[String]

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment, nil]
      optional :environment, enum: -> { Privy::KyxEnvironment }

      # @!attribute redirect_uri
      #   URI to redirect after completing KYB.
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!method initialize(email:, provider:, business_name: nil, client_agreement_id: nil, endorsements: nil, environment: nil, redirect_uri: nil)
      #   Request body for initiating a hosted KYB flow for an organization.
      #
      #   @param email [String] Email address for the organization.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param business_name [String] Legal name of the business.
      #
      #   @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
      #
      #   @param endorsements [Array<String>] Endorsements to request during KYB.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
      #
      #   @param redirect_uri [String] URI to redirect after completing KYB.
    end
  end
end
