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

      # Optional label for the item, unique within the condition set ignoring case.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # A value to add to a condition set, with an optional name.
      sig { params(value: String, name: String).returns(T.attached_class) }
      def self.new(
        value:,
        # Optional label for the item, unique within the condition set ignoring case.
        name: nil
      )
      end

      sig { override.returns({ value: String, name: String }) }
      def to_hash
      end
    end
  end
end
