# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_custom_auth_id
    class UserGetByCustomAuthIDParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute custom_user_id
      #
      #   @return [String]
      required :custom_user_id, String

      # @!method initialize(custom_user_id:, request_options: {})
      #   @param custom_user_id [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
