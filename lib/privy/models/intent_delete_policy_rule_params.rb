# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#delete_policy_rule
    class IntentDeletePolicyRuleParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute policy_id
      #   ID of the policy.
      #
      #   @return [String]
      required :policy_id, String

      # @!attribute rule_id
      #   ID of the rule.
      #
      #   @return [String]
      required :rule_id, String

      # @!attribute privy_request_expiry
      #   Request expiry. Value is a Unix timestamp in milliseconds representing the
      #   deadline by which the request must be processed.
      #
      #   @return [String, nil]
      optional :privy_request_expiry, String

      # @!method initialize(policy_id:, rule_id:, privy_request_expiry: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::IntentDeletePolicyRuleParams} for more details.
      #
      #   @param policy_id [String] ID of the policy.
      #
      #   @param rule_id [String] ID of the rule.
      #
      #   @param privy_request_expiry [String] Request expiry. Value is a Unix timestamp in milliseconds representing the deadl
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
