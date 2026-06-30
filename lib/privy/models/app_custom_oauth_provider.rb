# frozen_string_literal: true

module Privy
  module Models
    class AppCustomOAuthProvider < Privy::Internal::Type::BaseModel
      # @!attribute enabled
      #
      #   @return [Boolean]
      required :enabled, Privy::Internal::Type::Boolean

      # @!attribute provider
      #   The ID of a custom OAuth provider, set up for this app. Must start with
      #   "custom:".
      #
      #   @return [String]
      required :provider, String

      # @!attribute provider_display_name
      #
      #   @return [String]
      required :provider_display_name, String

      # @!attribute provider_icon_url
      #
      #   @return [String]
      required :provider_icon_url, String

      # @!method initialize(enabled:, provider:, provider_display_name:, provider_icon_url:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AppCustomOAuthProvider} for more details.
      #
      #   A custom OAuth provider configured for an app.
      #
      #   @param enabled [Boolean]
      #
      #   @param provider [String] The ID of a custom OAuth provider, set up for this app. Must start with "custom:
      #
      #   @param provider_display_name [String]
      #
      #   @param provider_icon_url [String]
    end
  end
end
