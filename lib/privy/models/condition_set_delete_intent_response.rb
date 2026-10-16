# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#delete_condition_set
    class ConditionSetDeleteIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::ConditionSetDeleteIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::ConditionSetDeleteIntentResponse::IntentType }

      # @!attribute request_details
      #   Request details for deleting a condition set via intent.
      #
      #   @return [Privy::Models::ConditionSetIntentDeleteRequestDetails]
      required :request_details, -> { Privy::ConditionSetIntentDeleteRequestDetails }

      # @!attribute action_result
      #   Result of condition set execution (only present if status is 'executed' or
      #   'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A condition set for grouping related condition values.
      #
      #   @return [Privy::Models::ConditionSet, nil]
      optional :current_resource_data, -> { Privy::ConditionSet }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ConditionSetDeleteIntentResponse} for more details.
      #
      #   Response for a condition set delete intent
      #
      #   @param intent_type [Symbol, Privy::Models::ConditionSetDeleteIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::ConditionSetIntentDeleteRequestDetails] Request details for deleting a condition set via intent.
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of condition set execution (only present if status is 'executed' or 'fail
      #
      #   @param current_resource_data [Privy::Models::ConditionSet] A condition set for grouping related condition values.

      module IntentType
        extend Privy::Internal::Type::Enum

        CONDITION_SET = :CONDITION_SET

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
