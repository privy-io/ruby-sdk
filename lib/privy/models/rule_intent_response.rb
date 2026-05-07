# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#create_policy_rule
    class RuleIntentResponse < Privy::Models::BaseIntentResponse
      # @!attribute intent_type
      #
      #   @return [Symbol, Privy::Models::RuleIntentResponse::IntentType]
      required :intent_type, enum: -> { Privy::RuleIntentResponse::IntentType }

      # @!attribute request_details
      #   The original rule request. Method is POST (create), PATCH (update), or DELETE
      #   (delete)
      #
      #   @return [Privy::Models::RuleIntentCreateRequestDetails, Privy::Models::RuleIntentUpdateRequestDetails, Privy::Models::RuleIntentDeleteRequestDetails]
      required :request_details, union: -> { Privy::RuleIntentRequestDetails }

      # @!attribute action_result
      #   Result of rule execution (only present if status is 'executed' or 'failed')
      #
      #   @return [Privy::Models::BaseActionResult, nil]
      optional :action_result, -> { Privy::BaseActionResult }

      # @!attribute current_resource_data
      #   A rule that defines the conditions and action to take if the conditions are
      #   true.
      #
      #   @return [Privy::Models::PolicyRuleResponse, nil]
      optional :current_resource_data, -> { Privy::PolicyRuleResponse }

      # @!attribute policy
      #   A policy for controlling wallet operations.
      #
      #   @return [Privy::Models::Policy, nil]
      optional :policy, -> { Privy::Policy }

      # @!method initialize(intent_type:, request_details:, action_result: nil, current_resource_data: nil, policy: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::RuleIntentResponse} for more details.
      #
      #   Response for a rule intent
      #
      #   @param intent_type [Symbol, Privy::Models::RuleIntentResponse::IntentType]
      #
      #   @param request_details [Privy::Models::RuleIntentCreateRequestDetails, Privy::Models::RuleIntentUpdateRequestDetails, Privy::Models::RuleIntentDeleteRequestDetails] The original rule request. Method is POST (create), PATCH (update), or DELETE (d
      #
      #   @param action_result [Privy::Models::BaseActionResult] Result of rule execution (only present if status is 'executed' or 'failed')
      #
      #   @param current_resource_data [Privy::Models::PolicyRuleResponse] A rule that defines the conditions and action to take if the conditions are true
      #
      #   @param policy [Privy::Models::Policy] A policy for controlling wallet operations.

      module IntentType
        extend Privy::Internal::Type::Enum

        RULE = :RULE

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
