# frozen_string_literal: true

module Privy
  module Models
    class KyxTosResponse < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   Provider environment (production or sandbox).
      #
      #   @return [Symbol, Privy::Models::KyxEnvironment]
      required :environment, enum: -> { Privy::KyxEnvironment }

      # @!attribute link
      #   URL for the Terms of Service acceptance page.
      #
      #   @return [String]
      required :link, String

      # @!attribute provider
      #   KYC/KYB provider identifier.
      #
      #   @return [Symbol, Privy::Models::KyxProvider]
      required :provider, enum: -> { Privy::KyxProvider }

      # @!attribute status
      #   Status of Terms of Service acceptance. Passthrough from the provider.
      #
      #   @return [String]
      required :status, String

      # @!method initialize(environment:, link:, provider:, status:)
      #   Response containing a Terms of Service link.
      #
      #   @param environment [Symbol, Privy::Models::KyxEnvironment] Provider environment (production or sandbox).
      #
      #   @param link [String] URL for the Terms of Service acceptance page.
      #
      #   @param provider [Symbol, Privy::Models::KyxProvider] KYC/KYB provider identifier.
      #
      #   @param status [String] Status of Terms of Service acceptance. Passthrough from the provider.
    end
  end
end
