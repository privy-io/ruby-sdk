# typed: strong

module Privy
  module Models
    class UpdateConditionSetItemRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::UpdateConditionSetItemRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # New label for the item, unique within the condition set ignoring case, or `null`
      # to remove it.
      sig { returns(T.nilable(String)) }
      attr_accessor :name

      # New value for the item, which must not already exist in the condition set.
      sig { returns(T.nilable(String)) }
      attr_reader :value

      sig { params(value: String).void }
      attr_writer :value

      # Fields to update on a condition set item; at least one is required.
      sig do
        params(name: T.nilable(String), value: String).returns(T.attached_class)
      end
      def self.new(
        # New label for the item, unique within the condition set ignoring case, or `null`
        # to remove it.
        name: nil,
        # New value for the item, which must not already exist in the condition set.
        value: nil
      )
      end

      sig { override.returns({ name: T.nilable(String), value: String }) }
      def to_hash
      end
    end
  end
end
