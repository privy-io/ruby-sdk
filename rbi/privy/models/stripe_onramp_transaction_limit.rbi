# typed: strong

module Privy
  module Models
    class StripeOnrampTransactionLimit < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::StripeOnrampTransactionLimit, Privy::Internal::AnyHash)
        end

      # The remaining amount available for the payment method.
      sig { returns(Float) }
      attr_accessor :limit

      # The remaining Stripe onramp amount for a payment method.
      sig { params(limit: Float).returns(T.attached_class) }
      def self.new(
        # The remaining amount available for the payment method.
        limit:
      )
      end

      sig { override.returns({ limit: Float }) }
      def to_hash
      end
    end
  end
end
