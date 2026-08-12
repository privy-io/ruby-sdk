# typed: strong

module Privy
  module Models
    class GetStripeOnrampTransactionLimitsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GetStripeOnrampTransactionLimitsResponse,
            Privy::Internal::AnyHash
          )
        end

      sig do
        returns(
          T::Hash[
            Symbol,
            T::Hash[Symbol, T::Array[Privy::StripeOnrampTransactionLimit]]
          ]
        )
      end
      attr_accessor :limits

      # The remaining Stripe onramp limits by source currency and payment method.
      sig do
        params(
          limits:
            T::Hash[
              Symbol,
              T::Hash[
                Symbol,
                T::Array[Privy::StripeOnrampTransactionLimit::OrHash]
              ]
            ]
        ).returns(T.attached_class)
      end
      def self.new(limits:)
      end

      sig do
        override.returns(
          {
            limits:
              T::Hash[
                Symbol,
                T::Hash[Symbol, T::Array[Privy::StripeOnrampTransactionLimit]]
              ]
          }
        )
      end
      def to_hash
      end
    end
  end
end
