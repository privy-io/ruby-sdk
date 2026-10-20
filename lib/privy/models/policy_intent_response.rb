# frozen_string_literal: true

module Privy
  module Models
    class PolicyIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::PolicyIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::PolicyIntentResponse::IntentType }

      # @!attribute request_details
      #   The original policy request. Method is PATCH (update) or DELETE (delete).
      #
      #   @return [Privy::Models::PolicyIntentRequestDetails, Privy::Models::PolicyIntentDeleteRequestDetails]
      required :request_details, union: -> { Privy::PolicyIntentRequestDetailsUnion }

      # @!attribute action_result
      #   Result of policy execution (only present if status is 'executed' or 'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A policy for controlling wallet operations.
      #
      #   @return [Privy::Models::Policy, nil]
      optional :current_resource_data, -> { Privy::Policy }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil)
      #   Response for a policy intent
      #
      #   @param intent_type [Symbol, Privy::Models::PolicyIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::PolicyIntentRequestDetails, Privy::Models::PolicyIntentDeleteRequestDetails] The original policy request. Method is PATCH (update) or DELETE (delete).
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of policy execution (only present if status is 'executed' or 'failed')
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
