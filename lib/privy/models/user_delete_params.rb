# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#delete
    class UserDeleteParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute user_id
      #   ID of the user.
      #
      #   @return [String]
      required :user_id, String

      # @!method initialize(user_id:, request_options: {})
      #   @param user_id [String] ID of the user.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
