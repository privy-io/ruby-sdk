# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#set_custom_metadata
    class UserSetCustomMetadataParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute user_id
      #   ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!attribute custom_metadata
      #   Custom metadata associated with the user.
      #
      #   @return [Hash{Symbol=>String, Float, Boolean}]
      required :custom_metadata, -> { Privy::Internal::Type::HashOf[union: Privy::CustomMetadataItem] }

      # @!method initialize(user_id:, custom_metadata:, request_options: {})
      #   @param user_id [String] ID of the user.
      #
      #   @param custom_metadata [Hash{Symbol=>String, Float, Boolean}] Custom metadata associated with the user.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
