# typed: strong

module Privy
  module Models
    class ConditionSetDeleteIntentResponse < Privy::Models::BaseIntentResponse
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetDeleteIntentResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          Privy::ConditionSetDeleteIntentResponse::IntentType::TaggedSymbol
        )
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

      # Response for a condition set delete intent
      sig do
        params(
          intent_type:
            Privy::ConditionSetDeleteIntentResponse::IntentType::OrSymbol,
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
              Privy::ConditionSetDeleteIntentResponse::IntentType::TaggedSymbol,
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
            T.all(Symbol, Privy::ConditionSetDeleteIntentResponse::IntentType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CONDITION_SET =
          T.let(
            :CONDITION_SET,
            Privy::ConditionSetDeleteIntentResponse::IntentType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ConditionSetDeleteIntentResponse::IntentType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
