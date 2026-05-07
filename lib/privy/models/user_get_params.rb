# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get
    class UserGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute user_id
      #   User ID
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(user_id:, request_options: {})
      #   @param user_id [String] User ID
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
