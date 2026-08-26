# frozen_string_literal: true

module Privy
  module Models
    class KyxTosRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute email
      #   Email for the user. If not provided, falls back to the user's linked email.
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment, nil]
      optional :environment, enum: -> { Privy::KyxEnvironment }

      # @!method initialize(provider:, email: nil, environment: nil)
      #   Request body for initiating Terms of Service acceptance.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param email [String] Email for the user. If not provided, falls back to the user's linked email.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
    end
  end
end
