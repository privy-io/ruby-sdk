# typed: strong

module Privy
  module Models
    class ConditionSetIntentDeleteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ConditionSetIntentDeleteRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # Empty request body for a condition set delete intent.
      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
