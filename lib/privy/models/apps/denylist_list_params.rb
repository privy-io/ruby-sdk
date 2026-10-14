# frozen_string_literal: true

module Privy
  module Models
    module Apps
      # @see Privy::Resources::Apps::Denylist#list
      class DenylistListParams < Privy::Internal::Type::BaseModel
        extend Privy::Internal::Type::RequestParameters::Converter
        include Privy::Internal::Type::RequestParameters

        # @!attribute app_id
        #   The ID of the app.
        #
        #   @return [String]
        required :app_id, String

        # @!attribute cursor
        #   Cursor returned by the previous page.
        #
        #   @return [String, nil]
        optional :cursor, String

        # @!attribute limit
        #
        #   @return [Float, nil]
        optional :limit, Float, nil?: true

        # @!method initialize(app_id:, cursor: nil, limit: nil, request_options: {})
        #   @param app_id [String] The ID of the app.
        #
        #   @param cursor [String] Cursor returned by the previous page.
        #
        #   @param limit [Float, nil]
        #
        #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
