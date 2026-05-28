# typed: strong

module Privy
  module Models
    class ExchangeStripeTokensInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExchangeStripeTokensInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :auth_intent_id

      sig { returns(String) }
      attr_accessor :crypto_customer_id

      # Input for exchanging a Link auth intent for OAuth tokens.
      sig do
        params(auth_intent_id: String, crypto_customer_id: String).returns(
          T.attached_class
        )
      end
      def self.new(auth_intent_id:, crypto_customer_id:)
      end

      sig do
        override.returns({ auth_intent_id: String, crypto_customer_id: String })
      end
      def to_hash
      end
    end
  end
end
