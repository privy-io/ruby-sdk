# frozen_string_literal: true

module Privy
  module Models
    class KYCLinksRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute client_agreement_id
      #   Client-side agreement ID for ToS acceptance.
      #
      #   @return [String, nil]
      optional :client_agreement_id, String

      # @!attribute email
      #   Email address for the KYC session.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute endorsements
      #   Endorsements to request during KYC.
      #
      #   @return [Array<String>, nil]
      optional :endorsements, Privy::Internal::Type::ArrayOf[String]

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment, nil]
      optional :environment, enum: -> { Privy::KyxEnvironment }

      # @!attribute redirect_uri
      #   URI to redirect the user after completing KYC.
      #
      #   @return [String, nil]
      optional :redirect_uri, String

      # @!method initialize(provider:, client_agreement_id: nil, email: nil, endorsements: nil, environment: nil, redirect_uri: nil)
      #   Request body for initiating a hosted KYC flow.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
      #
      #   @param email [String] Email address for the KYC session.
      #
      #   @param endorsements [Array<String>] Endorsements to request during KYC.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
      #
      #   @param redirect_uri [String] URI to redirect the user after completing KYC.
    end
  end
end
