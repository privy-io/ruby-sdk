# frozen_string_literal: true

module Privy
  module Models
    class PolicyRuleRequestParams < Privy::Internal::Type::BaseModel
      # @!attribute policy_id
      #   A unique identifier for a policy.
      #
      #   @return [String]
      required :policy_id, String

      # @!attribute rule_id
      #
      #   @return [String]
      required :rule_id, String

      # @!method initialize(policy_id:, rule_id:)
      #   Unique IDs of the policy and the rule within the policy to take actions on.
      #
      #   @param policy_id [String] A unique identifier for a policy.
      #
      #   @param rule_id [String]
    end
  end
end
