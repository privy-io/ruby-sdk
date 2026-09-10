# typed: strong

module Privy
  module Models
    class CardIssuingUpdateCardInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingUpdateCardInput, Privy::Internal::AnyHash)
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Why a lost or stolen card is being canceled.
      sig { returns(T.nilable(Privy::CardIssuingCancellationReason::OrSymbol)) }
      attr_reader :cancellation_reason

      sig do
        params(
          cancellation_reason: Privy::CardIssuingCancellationReason::OrSymbol
        ).void
      end
      attr_writer :cancellation_reason

      # Encrypted PIN to set on the card.
      sig { returns(T.nilable(Privy::CardIssuingPinUpdate)) }
      attr_reader :pin

      sig { params(pin: Privy::CardIssuingPinUpdate::OrHash).void }
      attr_writer :pin

      # Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
      # canceled closes it.
      sig { returns(T.nilable(Privy::CardIssuingCardStatus::OrSymbol)) }
      attr_reader :status

      sig { params(status: Privy::CardIssuingCardStatus::OrSymbol).void }
      attr_writer :status

      # Input for updating a card.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          cancellation_reason: Privy::CardIssuingCancellationReason::OrSymbol,
          pin: Privy::CardIssuingPinUpdate::OrHash,
          status: Privy::CardIssuingCardStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        # Why a lost or stolen card is being canceled.
        cancellation_reason: nil,
        # Encrypted PIN to set on the card.
        pin: nil,
        # Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
        # canceled closes it.
        status: nil
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            cancellation_reason: Privy::CardIssuingCancellationReason::OrSymbol,
            pin: Privy::CardIssuingPinUpdate,
            status: Privy::CardIssuingCardStatus::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
