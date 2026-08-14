# typed: strong

module Privy
  module Models
    class CardIssuingEphemeralKeyRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingEphemeralKeyRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Browser nonce returned by Stripe.js for the card provider ID.
      sig { returns(String) }
      attr_accessor :nonce

      # Request body for authorizing Stripe Issuing Elements to display card details.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          nonce: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        # Browser nonce returned by Stripe.js for the card provider ID.
        nonce:
      )
      end

      sig do
        override.returns(
          { environment: Privy::Environment::OrSymbol, nonce: String }
        )
      end
      def to_hash
      end
    end
  end
end
