# typed: strong

module Privy
  module Models
    class ConditionSetItem < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetItem, Privy::Internal::AnyHash)
        end

      # Unique ID of the created condition set item.
      sig { returns(String) }
      attr_accessor :id

      # Unique ID of the condition set this item belongs to.
      sig { returns(String) }
      attr_accessor :condition_set_id

      # Unix timestamp of when the condition set item was created in milliseconds.
      sig { returns(Float) }
      attr_accessor :created_at

      # The value stored in this condition set item.
      sig { returns(String) }
      attr_accessor :value

      # A single item in a condition set.
      sig do
        params(
          id: String,
          condition_set_id: String,
          created_at: Float,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique ID of the created condition set item.
        id:,
        # Unique ID of the condition set this item belongs to.
        condition_set_id:,
        # Unix timestamp of when the condition set item was created in milliseconds.
        created_at:,
        # The value stored in this condition set item.
        value:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            condition_set_id: String,
            created_at: Float,
            value: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
