# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#list
    class UserListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute limit
      #
      #   @return [Float, nil]
      optional :limit, Float, nil?: true

      # @!method initialize(cursor: nil, limit: nil, request_options: {})
      #   @param cursor [String]
      #   @param limit [Float, nil]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
