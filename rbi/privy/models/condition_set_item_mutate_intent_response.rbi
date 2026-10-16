# typed: strong

module Privy
  module Models
    class ConditionSetItemMutateIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetItemMutateIntentResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::ConditionSetItemMutateIntentResponse::IntentType::TaggedSymbol
        )
      end
      attr_accessor :intent_type

      # The original condition set item request. Method is POST (add items), PUT
      # (replace items), or DELETE (delete an item)
      sig { returns(Privy::ConditionSetItemIntentRequestDetails::Variants) }
      attr_accessor :request_details

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

      # Response for an intent that adds or replaces condition set items
      sig do
        params(
          intent_type:
            Privy::ConditionSetItemMutateIntentResponse::IntentType::OrSymbol,
          request_details:
            T.any(
              Privy::ConditionSetItemIntentCreateRequestDetails::OrHash,
              Privy::ConditionSetItemIntentUpdateRequestDetails::OrHash,
              Privy::ConditionSetItemIntentDeleteRequestDetails::OrHash
            ),
          action_result: Privy::BaseActionResult::OrHash,
          condition_set: Privy::ConditionSet::OrHash,
          current_resource_data: Privy::ConditionSetItem::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intent_type:,
        # The original condition set item request. Method is POST (add items), PUT
        # (replace items), or DELETE (delete an item)
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
              Privy::ConditionSetItemMutateIntentResponse::IntentType::TaggedSymbol,
            request_details:
              Privy::ConditionSetItemIntentRequestDetails::Variants,
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
            T.all(
              Symbol,
              Privy::ConditionSetItemMutateIntentResponse::IntentType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONDITION_SET_ITEM =
          T.let(
            :CONDITION_SET_ITEM,
            Privy::ConditionSetItemMutateIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetItemMutateIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
