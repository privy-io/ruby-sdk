# typed: strong

module Privy
  module Models
    class ConditionSetItemIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetItemIntentResponse, Privy::Internal::AnyHash)
        end

      sig do
        returns(Privy::ConditionSetItemIntentResponse::IntentType::TaggedSymbol)
      end
      attr_accessor :intent_type

      # Request details for adding items to a condition set via intent.
      sig { returns(Privy::ConditionSetItemIntentCreateRequestDetails) }
      attr_reader :request_details

      sig do
        params(
          request_details:
            Privy::ConditionSetItemIntentCreateRequestDetails::OrHash
        ).void
      end
      attr_writer :request_details

      # Result of condition set item execution (only present if status is 'executed' or
      # 'failed')
      sig { returns(T.nilable(Privy::BaseActionResult)) }
      attr_reader :action_result

      sig { params(action_result: Privy::BaseActionResult::OrHash).void }
      attr_writer :action_result

      # A condition set for grouping related condition values.
      sig { returns(T.nilable(Privy::ConditionSet)) }
      attr_reader :condition_set

      sig { params(condition_set: Privy::ConditionSet::OrHash).void }
      attr_writer :condition_set

      # A single item in a condition set.
      sig { returns(T.nilable(Privy::ConditionSetItem)) }
      attr_reader :current_resource_data

      sig do
        params(current_resource_data: Privy::ConditionSetItem::OrHash).void
      end
      attr_writer :current_resource_data

      # Response for a condition set item intent
      sig do
        params(
          intent_type:
            Privy::ConditionSetItemIntentResponse::IntentType::OrSymbol,
          request_details:
            Privy::ConditionSetItemIntentCreateRequestDetails::OrHash,
          action_result: Privy::BaseActionResult::OrHash,
          condition_set: Privy::ConditionSet::OrHash,
          current_resource_data: Privy::ConditionSetItem::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # Request details for adding items to a condition set via intent.
        request_details:,
        # Result of condition set item execution (only present if status is 'executed' or
        # 'failed')
        action_result: nil,
        # A condition set for grouping related condition values.
        condition_set: nil,
        # A single item in a condition set.
        current_resource_data: nil
      )
      end

      sig do
        override.returns(
          {
            intent_type:
              Privy::ConditionSetItemIntentResponse::IntentType::TaggedSymbol,
            request_details: Privy::ConditionSetItemIntentCreateRequestDetails,
            action_result: Privy::BaseActionResult,
            condition_set: Privy::ConditionSet,
            current_resource_data: Privy::ConditionSetItem
          }
        )
      end
      def to_hash
      end

      module IntentType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ConditionSetItemIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONDITION_SET_ITEM =
          T.let(
            :CONDITION_SET_ITEM,
            Privy::ConditionSetItemIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetItemIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
