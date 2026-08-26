# frozen_string_literal: true

module Privy
  module Models
    class KYCSubmitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   KYC verification data for headless submission.
      #
      #   @return [Privy::Models::KYCSubmitData]
      required :data, -> { Privy::KYCSubmitData }

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

      # @!method initialize(data:, provider:, client_agreement_id: nil, endorsements: nil, environment: nil)
      #   Request body for headless KYC data submission.
      #
      #   @param data [Privy::Models::KYCSubmitData] KYC verification data for headless submission.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
      #
      #   @param endorsements [Array<String>] Endorsements to request during KYC.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
    end
  end
end
