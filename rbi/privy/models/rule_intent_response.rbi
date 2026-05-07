# typed: strong

module Privy
  module Models
    class RuleIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::RuleIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::RuleIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original rule request. Method is POST (create), PATCH (update), or DELETE
      # (delete)
      sig { returns(Privy::RuleIntentRequestDetails::Variants) }
      attr_accessor :request_details

      # Result of rule execution (only present if status is 'executed' or 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A rule that defines the conditions and action to take if the conditions are
      # true.
      sig { returns(T.nilable(Privy::PolicyRuleResponse)) }
      attr_reader :current_resource_data

      sig do
        params(current_resource_data: Privy::PolicyRuleResponse::OrHash).void
      end
      attr_writer :current_resource_data

      # A policy for controlling wallet operations.
      sig { returns(T.nilable(Privy::Policy)) }
      attr_reader :policy

      sig { params(policy: Privy::Policy::OrHash).void }
      attr_writer :policy

      # Response for a rule intent
      sig do
        params(
          intent_type: Privy::RuleIntentResponse::IntentType::OrSymbol,
          request_details:
            T.any(
              Privy::RuleIntentCreateRequestDetails::OrHash,
              Privy::RuleIntentUpdateRequestDetails::OrHash,
              Privy::RuleIntentDeleteRequestDetails::OrHash
            ),
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::PolicyRuleResponse::OrHash,
          policy: Privy::Policy::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original rule request. Method is POST (create), PATCH (update), or DELETE
        # (delete)
        request_details:,
        # Result of rule execution (only present if status is 'executed' or 'failed')
        action_result: nil,
        # A rule that defines the conditions and action to take if the conditions are
        # true.
        current_resource_data: nil,
        # A policy for controlling wallet operations.
        policy: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type: Privy::RuleIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::RuleIntentRequestDetails::Variants,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::PolicyRuleResponse,
            policy: Privy::Policy
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::RuleIntentResponse::IntentType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        RULE = T.let(:RULE, Privy::RuleIntentResponse::IntentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::RuleIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
