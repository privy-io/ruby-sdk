# typed: strong

module Privy
  module Models
    class AlchemyPaymasterContext < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AlchemyPaymasterContext, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :policy_id

      # The Alchemy paymaster context for a smart wallet network configuration.
      sig { params(policy_id: String).returns(T.attached_class) }
      def self.new(policy_id:)
      end

      sig { override.returns({ policy_id: String }) }
      def to_hash
      end
    end
  end
end
