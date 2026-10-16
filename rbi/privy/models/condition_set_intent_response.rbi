# typed: strong

module Privy
  module Models
    class ConditionSetIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetIntentResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::ConditionSetIntentResponse::IntentType::TaggedSymbol)
      end
      attr_accessor :intent_type

      # Request details for deleting a condition set via intent.
      sig { returns(Privy::ConditionSetIntentDeleteRequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details: Privy::ConditionSetIntentDeleteRequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of condition set execution (only present if status is 'executed' or
      # 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A condition set for grouping related condition values.
      sig { returns(T.nilable(Privy::ConditionSet)) }
      attr_reader :current_resource_data

      sig { params(current_resource_data: Privy::ConditionSet::OrHash).void }
      attr_writer :current_resource_data

      # Response for a condition set intent
      sig do
        params(
          intent_type: Privy::ConditionSetIntentResponse::IntentType::OrSymbol,
          request_details:
            Privy::ConditionSetIntentDeleteRequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          current_resource_data: Privy::ConditionSet::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # Request details for deleting a condition set via intent.
        request_details:,
        # Result of condition set execution (only present if status is 'executed' or
        # 'failed')
        action_result: nil,
        # A condition set for grouping related condition values.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type:
              Privy::ConditionSetIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::ConditionSetIntentDeleteRequestDetails,
            action_result: Privy::BaseActionResult,
            current_resource_data: Privy::ConditionSet
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ConditionSetIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONDITION_SET =
          T.let(
            :CONDITION_SET,
            Privy::ConditionSetIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
