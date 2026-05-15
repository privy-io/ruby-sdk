# typed: strong

module Privy
  module Models
    class ConditionSetItemValueInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetItemValueInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :value

      # A single value to add to a condition set.
      sig { params(value: String).returns(T.attached_class) }
      def self.new(value:)
      end

      sig { override.returns({ value: String }) }
      def to_hash
      end
    end
  end
end
