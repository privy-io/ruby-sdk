# typed: strong

module Privy
  module Models
    class PolicyIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyIntentResponse, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::PolicyIntentResponse::IntentType::TaggedSymbol) }
      attr_accessor :intent_type

      # The original policy request. Method is PATCH (update) or DELETE (delete).
      sig { returns(Privy::PolicyIntentRequestDetailsUnion::Variants) }
      attr_accessor :request_details

      # Result of policy execution (only present if status is 'executed' or 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A policy for controlling wallet operations.
      sig { returns(T.nilable(Privy::Policy)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::Policy::OrHash).void }
      attr_writer :current_resource_data

      # Response for a policy intent
      sig do
        params(
          intent_type: Privy::PolicyIntentResponse::IntentType::OrSymbol,
          request_details:
            T.any(
              Privy::PolicyIntentRequestDetails::OrHash,
              Privy::PolicyIntentDeleteRequestDetails::OrHash
            ),
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Policy::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original policy request. Method is PATCH (update) or DELETE (delete).
        request_details:,
        # Result of policy execution (only present if status is 'executed' or 'failed')
        action_result: nil,
        # A policy for controlling wallet operations.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type: Privy::PolicyIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::PolicyIntentRequestDetailsUnion::Variants,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::Policy
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PolicyIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLICY =
          T.let(:POLICY, Privy::PolicyIntentResponse::IntentType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PolicyIntentResponse::IntentType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
