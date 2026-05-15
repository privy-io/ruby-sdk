# typed: strong

module Privy
  module Models
    class PolicyRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :policy_id

      # Unique ID of the policy to take actions on.
      sig { params(policy_id: String).returns(T.attached_class) }
      def self.new(policy_id:)
      end

      sig { override.returns({ policy_id: String }) }
      def to_hash
      end
    end
  end
end
