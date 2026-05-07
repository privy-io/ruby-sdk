# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#get
    class IntentGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute intent_id
      #   ID of the intent.
      #
      #   @return [String]
      required :intent_id, String

      # @!method initialize(intent_id:, request_options: {})
      #   @param intent_id [String] ID of the intent.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
