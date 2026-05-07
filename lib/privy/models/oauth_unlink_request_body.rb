# frozen_string_literal: true

module Privy
  module Models
    class OAuthUnlinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute provider
      #   The ID of an OAuth provider.
      #
      #   @return [Symbol, Privy::Models::ExternalOAuthProviderID, String]
      required :provider, union: -> { Privy::OAuthProviderID }

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!method initialize(provider:, subject:)
      #   The request body for unlinking an OAuth account.
      #
      #   @param provider [Symbol, Privy::Models::ExternalOAuthProviderID, String] The ID of an OAuth provider.
      #
      #   @param subject [String]
    end
  end
end
