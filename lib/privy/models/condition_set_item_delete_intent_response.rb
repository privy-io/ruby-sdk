# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#delete_condition_set_item
    class ConditionSetItemDeleteIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::ConditionSetItemDeleteIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::ConditionSetItemDeleteIntentResponse::IntentType }

      # @!attribute request_details
      #   Request details for deleting a condition set item via intent.
      #
      #   @return [Privy::Models::ConditionSetItemIntentDeleteRequestDetails]
      required :request_details, -> { Privy::ConditionSetItemIntentDeleteRequestDetails }

      # @!attribute action_result
      #   Result of condition set item execution (only present if status is 'executed' or
      #   'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute condition_set
      #   A condition set for grouping related condition values.
      #
      #   @return [Privy::Models::ConditionSet, nil]
      optional :condition_set, -> { Privy::ConditionSet }

      # @!attribute current_resource_data
      #   A single item in a condition set.
      #
      #   @return [Privy::Models::ConditionSetItem, nil]
      optional :current_resource_data, -> { Privy::ConditionSetItem }

      # @!method initialize(intent_type:, request_details:, action_result: nil, condition_set: nil, current_resource_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ConditionSetItemDeleteIntentResponse} for more details.
      #
      #   Response for an intent that deletes a condition set item
      #
      #   @param intent_type [Symbol, Privy::Models::ConditionSetItemDeleteIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::ConditionSetItemIntentDeleteRequestDetails] Request details for deleting a condition set item via intent.
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of condition set item execution (only present if status is 'executed' or
      #
      #   @param condition_set [Privy::Models::ConditionSet] A condition set for grouping related condition values.
      #
      #   @param current_resource_data [Privy::Models::ConditionSetItem] A single item in a condition set.

      module IntentType
        extend Privy::Internal::Type::Enum

        CONDITION_SET_ITEM = :CONDITION_SET_ITEM

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
