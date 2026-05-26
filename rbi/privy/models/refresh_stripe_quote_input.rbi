# typed: strong

module Privy
  module Models
    class RefreshStripeQuoteInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RefreshStripeQuoteInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :auth_intent_id

      # Input for refreshing an onramp session quote.
      sig { params(auth_intent_id: String).returns(T.attached_class) }
      def self.new(auth_intent_id:)
      end

      sig { override.returns({ auth_intent_id: String }) }
      def to_hash
      end
    end
  end
end
