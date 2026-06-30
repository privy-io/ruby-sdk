# typed: strong

module Privy
  module Models
    # Region derived from a Stripe user's country of residence.
    module StripeKYCRegion
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::StripeKYCRegion) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      US = T.let(:us, Privy::StripeKYCRegion::TaggedSymbol)
      EU = T.let(:eu, Privy::StripeKYCRegion::TaggedSymbol)

      sig { override.returns(T::Array[Privy::StripeKYCRegion::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
