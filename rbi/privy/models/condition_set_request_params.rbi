# typed: strong

module Privy
  module Models
    class ConditionSetRequestParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ConditionSetRequestParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :condition_set_id

      # Unique ID of the condition set to take actions on.
      sig { params(condition_set_id: String).returns(T.attached_class) }
      def self.new(condition_set_id:)
      end

      sig { override.returns({ condition_set_id: String }) }
      def to_hash
      end
    end
  end
end
