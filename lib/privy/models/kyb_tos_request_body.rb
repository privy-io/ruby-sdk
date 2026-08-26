# frozen_string_literal: true

module Privy
  module Models
    class KYBTosRequestBody < Privy::Internal::Type::BaseModel
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

      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment, nil]
      optional :environment, enum: -> { Privy::KyxEnvironment }

      # @!method initialize(email:, provider:, business_name: nil, environment: nil)
      #   Request body for initiating Terms of Service acceptance for an organization.
      #
      #   @param email [String] Email address for the organization.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param business_name [String] Legal name of the business.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
    end
  end
end
