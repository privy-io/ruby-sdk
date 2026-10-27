# frozen_string_literal: true

module Privy
  module Models
    module Policies
      # @see Privy::Resources::Policies::ConditionSets#list
      class ConditionSetListParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute cursor
        #   Cursor returned by the previous page.
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(cursor: nil, limit: nil, request_options: {})
        #   @param cursor [String] Cursor returned by the previous page.
        #
        #   @param limit [Integer]
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
