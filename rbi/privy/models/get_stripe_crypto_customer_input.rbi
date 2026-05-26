# typed: strong

module Privy
  module Models
    class GetStripeCryptoCustomerInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetStripeCryptoCustomerInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :auth_intent_id

      # Query params for retrieving a Stripe crypto customer.
      sig do
        params(id: String, auth_intent_id: String).returns(T.attached_class)
      end
      def self.new(id:, auth_intent_id:)
      end

      sig { override.returns({ id: String, auth_intent_id: String }) }
      def to_hash
      end
    end
  end
end
