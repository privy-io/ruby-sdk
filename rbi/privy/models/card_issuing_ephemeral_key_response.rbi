# typed: strong

module Privy
  module Models
    class CardIssuingEphemeralKeyResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingEphemeralKeyResponse,
            Privy::Internal::AnyHash
          )
        end

      # Short-lived Stripe authorization for displaying card details.
      sig { returns(Privy::CardIssuingEphemeralKey) }
      attr_reader :data

      sig { params(data: Privy::CardIssuingEphemeralKey::OrHash).void }
      attr_writer :data

      # Short-lived Stripe authorization for displaying an authenticated card.
      sig do
        params(data: Privy::CardIssuingEphemeralKey::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Short-lived Stripe authorization for displaying card details.
        data:
      )
      end

      sig { override.returns({ data: Privy::CardIssuingEphemeralKey }) }
      def to_hash
      end
    end
  end
end
