# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Apps#get
    class AppGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute app_id
      #   The ID of the app.
      #
      #   @return [String]
      required :app_id, String

      # @!method initialize(app_id:, request_options: {})
      #   @param app_id [String] The ID of the app.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
