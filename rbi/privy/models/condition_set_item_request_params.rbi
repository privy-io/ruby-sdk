# typed: strong

module Privy
  module Models
    class ConditionSetItemRequestParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetItemRequestParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :condition_set_id

      sig { returns(String) }
      attr_accessor :condition_set_item_id

      # Unique IDs of the condition set and the condition set item within the condition
      # set to take actions on.
      sig do
        params(condition_set_id: String, condition_set_item_id: String).returns(
          T.attached_class
        )
      end
      def self.new(condition_set_id:, condition_set_item_id:)
      end

      sig do
        override.returns(
          { condition_set_id: String, condition_set_item_id: String }
        )
      end
      def to_hash
      end
    end
  end
end
