# typed: strong

module Privy
  module Models
    class PolicyGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Privy::PolicyGetParams, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :policy_id

      sig do
        params(
          policy_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(policy_id:, request_options: {})
      end

      sig do
        override.returns(
          { policy_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
