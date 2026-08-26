# typed: strong

module Privy
  module Models
    class CardIssuingReplaceCardRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingReplaceCardRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Why a card is being replaced.
      sig { returns(Privy::CardIssuingReplacementReason::OrSymbol) }
      attr_accessor :replacement_reason

      # Input for replacing a lost, stolen, or expired card.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          replacement_reason: Privy::CardIssuingReplacementReason::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        # Why a card is being replaced.
        replacement_reason:
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            replacement_reason: Privy::CardIssuingReplacementReason::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
