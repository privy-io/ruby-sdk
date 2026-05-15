# typed: strong

module Privy
  module Models
    class PolicyRuleRequestParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyRuleRequestParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :policy_id

      sig { returns(String) }
      attr_accessor :rule_id

      # Unique IDs of the policy and the rule within the policy to take actions on.
      sig do
        params(policy_id: String, rule_id: String).returns(T.attached_class)
      end
      def self.new(policy_id:, rule_id:)
      end

      sig { override.returns({ policy_id: String, rule_id: String }) }
      def to_hash
      end
    end
  end
end
