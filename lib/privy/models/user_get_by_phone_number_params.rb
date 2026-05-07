# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#get_by_phone_number
    class UserGetByPhoneNumberParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute number
      #
      #   @return [String]
      required :number, String

      # @!method initialize(number:, request_options: {})
      #   @param number [String]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
