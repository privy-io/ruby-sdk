# frozen_string_literal: true

module Privy
  module Models
    class OAuthTransferUserInfoMeta < Privy::Internal::Type::BaseModel
      # @!attribute provider_app_id
      #
      #   @return [String, nil]
      optional :provider_app_id, String, api_name: :providerAppId

      # @!method initialize(provider_app_id: nil)
      #   Metadata for an OAuth transfer user info.
      #
      #   @param provider_app_id [String]
    end
  end
end
