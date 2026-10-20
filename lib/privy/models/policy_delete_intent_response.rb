# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#delete_policy
    class PolicyDeleteIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::PolicyDeleteIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::PolicyDeleteIntentResponse::IntentType }

      # @!attribute request_details
      #   Request details for deleting a policy via intent.
      #
      #   @return [Privy::Models::PolicyIntentDeleteRequestDetails]
      required :request_details, -> { Privy::PolicyIntentDeleteRequestDetails }

      # @!attribute action_result
      #   Result of policy delete execution (only present if status is 'executed' or
      #   'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A policy for controlling wallet operations.
      #
      #   @return [Privy::Models::Policy, nil]
      optional :current_resource_data, -> { Privy::Policy }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::PolicyDeleteIntentResponse} for more details.
      #
      #   Response for a policy delete intent
      #
      #   @param intent_type [Symbol, Privy::Models::PolicyDeleteIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::PolicyIntentDeleteRequestDetails] Request details for deleting a policy via intent.
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of policy delete execution (only present if status is 'executed' or 'fail
      #
      #   @param current_resource_data [Privy::Models::Policy] A policy for controlling wallet operations.

      module IntentType
        extend Privy::Internal::Type::Enum

        POLICY = :POLICY

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
