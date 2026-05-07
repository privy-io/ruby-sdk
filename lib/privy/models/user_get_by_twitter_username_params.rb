# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_twitter_username
    class UserGetByTwitterUsernameParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute username
      #
      #   @return [String]
      required :username, String

      # @!method initialize(username:, request_options: {})
      #   @param username [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
