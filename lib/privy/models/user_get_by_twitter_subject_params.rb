# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_twitter_subject
    class UserGetByTwitterSubjectParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute subject
      #
      #   @return [String]
      required :subject, String

      # @!method initialize(subject:, request_options: {})
      #   @param subject [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
