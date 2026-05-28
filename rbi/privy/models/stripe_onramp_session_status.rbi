# typed: strong

module Privy
  module Models
    # The state of the user's Stripe onramp session.
    module StripeOnrampSessionStatus
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::StripeOnrampSessionStatus) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACTIVE = T.let(:active, Privy::StripeOnrampSessionStatus::TaggedSymbol)
      EXPIRED = T.let(:expired, Privy::StripeOnrampSessionStatus::TaggedSymbol)
      NONE = T.let(:none, Privy::StripeOnrampSessionStatus::TaggedSymbol)

      sig do
        override.returns(
          T::Array[Privy::StripeOnrampSessionStatus::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
