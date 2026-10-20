# typed: strong

module Privy
  module Models
    class PolicyUpdateIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyUpdateIntentResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::PolicyUpdateIntentResponse::IntentType::TaggedSymbol)
      end
      attr_accessor :intent_type

      # Request details for a policy intent.
      sig { returns(Privy::PolicyIntentRequestDetails) }
      attr_reader :request_details

      sig do
        params(request_details: Privy::PolicyIntentRequestDetails::OrHash).void
      end
      attr_writer :request_details

      # Result of policy update execution (only present if status is 'executed' or
      # 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A policy for controlling wallet operations.
      sig { returns(T.nilable(Privy::Policy)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::Policy::OrHash).void }
      attr_writer :current_resource_data

      # Response for a policy update intent
      sig do
        params(
          intent_type: Privy::PolicyUpdateIntentResponse::IntentType::OrSymbol,
          request_details: Privy::PolicyIntentRequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Policy::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # Request details for a policy intent.
        request_details:,
        # Result of policy update execution (only present if status is 'executed' or
        # 'failed')
        action_result: nil,
        # A policy for controlling wallet operations.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type:
              Privy::PolicyUpdateIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::PolicyIntentRequestDetails,
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
            T.all(Symbol, Privy::PolicyUpdateIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLICY =
          T.let(
            :POLICY,
            Privy::PolicyUpdateIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::PolicyUpdateIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
