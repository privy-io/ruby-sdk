# typed: strong

module Privy
  module Models
    class PolicyGetRuleParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::PolicyGetRuleParams, Privy::Internal::AnyHash)
        end

      # A unique identifier for a policy.
      sig { returns(String) }
      attr_accessor :policy_id

      sig { returns(String) }
      attr_accessor :rule_id

      sig do
        params(
          policy_id: String,
          rule_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a policy.
        policy_id:,
        rule_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            policy_id: String,
            rule_id: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
