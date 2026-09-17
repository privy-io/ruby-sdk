# frozen_string_literal: true

module Privy
  module Models
    class KYBSubmitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute data
      #   KYB verification data for headless submission. Fields are individually optional
      #   because the provider accepts partial submissions and grants endorsements once
      #   enough data has arrived; a partial submission can be completed by calling the
      #   endpoint again.
      #
      #   @return [Privy::Models::KYBSubmitData]
      required :data, -> { Privy::KYBSubmitData }

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
      #   Endorsements to request during KYB.
      #
      #   @return [Array<String>, nil]
      optional :endorsements, Privy::Internal::Type::ArrayOf[String]

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment, nil]
      optional :environment, enum: -> { Privy::KyxEnvironment }

      # @!method initialize(data:, provider:, client_agreement_id: nil, endorsements: nil, environment: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KYBSubmitRequestBody} for more details.
      #
      #   Request body for headless KYB data submission.
      #
      #   @param data [Privy::Models::KYBSubmitData] KYB verification data for headless submission. Fields are individually optional
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param client_agreement_id [String] Client-side agreement ID for ToS acceptance.
      #
      #   @param endorsements [Array<String>] Endorsements to request during KYB.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
    end
  end
end
