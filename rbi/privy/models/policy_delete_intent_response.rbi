# typed: strong

module Privy
  module Models
    class PolicyDeleteIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyDeleteIntentResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::PolicyDeleteIntentResponse::IntentType::TaggedSymbol)
      end
      attr_accessor :intent_type

      # Request details for deleting a policy via intent.
      sig { returns(Privy::PolicyIntentDeleteRequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::PolicyIntentDeleteRequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of policy delete execution (only present if status is 'executed' or
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

      # Response for a policy delete intent
      sig do
        params(
          intent_type: Privy::PolicyDeleteIntentResponse::IntentType::OrSymbol,
          request_details: Privy::PolicyIntentDeleteRequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::Policy::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # Request details for deleting a policy via intent.
        request_details:,
        # Result of policy delete execution (only present if status is 'executed' or
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
              Privy::PolicyDeleteIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::PolicyIntentDeleteRequestDetails,
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
            T.all(Symbol, Privy::PolicyDeleteIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        POLICY =
          T.let(
            :POLICY,
            Privy::PolicyDeleteIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::PolicyDeleteIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
