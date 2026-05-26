# typed: strong

module Privy
  module Models
    class StripeOnrampCheckoutInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeOnrampCheckoutInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :auth_intent_id

      # Input for confirming an onramp session checkout.
      sig { params(auth_intent_id: String).returns(T.attached_class) }
      def self.new(auth_intent_id:)
      end

      sig { override.returns({ auth_intent_id: String }) }
      def to_hash
      end
    end
  end
end
