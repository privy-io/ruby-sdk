# typed: strong

module Privy
  module Models
    class RuleIntentDeleteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RuleIntentDeleteRequestBody, Privy::Internal::AnyHash)
        end

      # Empty request body for a rule delete intent.
      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
