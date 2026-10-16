# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#update_condition_set_items
    class IntentUpdateConditionSetItemsParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute condition_set_id
      #
      #   @return [String]
      required :condition_set_id, String

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String

      # @!method initialize(condition_set_id:, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::IntentUpdateConditionSetItemsParams} for more details.
      #
      #   @param condition_set_id [String]
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
