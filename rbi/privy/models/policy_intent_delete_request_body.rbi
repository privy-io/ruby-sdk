# typed: strong

module Privy
  module Models
    class PolicyIntentDeleteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyIntentDeleteRequestBody, Privy::Internal::AnyHash)
        end

      # Empty request body for a policy delete intent.
      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
