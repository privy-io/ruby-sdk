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

      # Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
      # canceled closes it.
      sig { returns(Privy::CardIssuingCardStatus::OrSymbol) }
      attr_accessor :status

      # Why a lost or stolen card is being canceled.
      sig { returns(T.nilable(Privy::CardIssuingCancellationReason::OrSymbol)) }
      attr_reader :cancellation_reason

      sig do
        params(
          cancellation_reason: Privy::CardIssuingCancellationReason::OrSymbol
        ).void
      end
      attr_writer :cancellation_reason

      # Input for updating the status of a card.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          status: Privy::CardIssuingCardStatus::OrSymbol,
          cancellation_reason: Privy::CardIssuingCancellationReason::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        # Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
        # canceled closes it.
        status:,
        # Why a lost or stolen card is being canceled.
        cancellation_reason: nil
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            status: Privy::CardIssuingCardStatus::OrSymbol,
            cancellation_reason: Privy::CardIssuingCancellationReason::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
