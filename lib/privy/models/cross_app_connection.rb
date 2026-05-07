# frozen_string_literal: true

module Privy
  module Models
    class CrossAppConnection < Privy::Internal::Type::BaseModel
      # @!attribute provider_app_custom_api_url
      #
      #   @return [String, nil]
      required :provider_app_custom_api_url, String, nil?: true

      # @!attribute provider_app_custom_auth_authorize_url
      #
      #   @return [String, nil]
      required :provider_app_custom_auth_authorize_url, String, nil?: true

      # @!attribute provider_app_custom_auth_transact_url
      #
      #   @return [String, nil]
      required :provider_app_custom_auth_transact_url, String, nil?: true

      # @!attribute provider_app_icon_url
      #
      #   @return [String, nil]
      required :provider_app_icon_url, String, nil?: true

      # @!attribute provider_app_id
      #
      #   @return [String]
      required :provider_app_id, String

      # @!attribute provider_app_name
      #
      #   @return [String]
      required :provider_app_name, String

      # @!attribute read_only
      #
      #   @return [Boolean]
      required :read_only, Privy::Internal::Type::Boolean

      # @!method initialize(provider_app_custom_api_url:, provider_app_custom_auth_authorize_url:, provider_app_custom_auth_transact_url:, provider_app_icon_url:, provider_app_id:, provider_app_name:, read_only:)
      #   A cross-app connection definition
      #
      #   @param provider_app_custom_api_url [String, nil]
      #   @param provider_app_custom_auth_authorize_url [String, nil]
      #   @param provider_app_custom_auth_transact_url [String, nil]
      #   @param provider_app_icon_url [String, nil]
      #   @param provider_app_id [String]
      #   @param provider_app_name [String]
      #   @param read_only [Boolean]
    end
  end
end
