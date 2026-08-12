# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingUpdateCardInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute status
      #   Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
      #   canceled closes it.
      #
      #   @return [Symbol, Privy::Models::CardIssuingCardStatus]
      required :status, enum: -> { Privy::CardIssuingCardStatus }

      # @!attribute cancellation_reason
      #   Why a lost or stolen card is being canceled.
      #
      #   @return [Symbol, Privy::Models::CardIssuingCancellationReason, nil]
      optional :cancellation_reason, enum: -> { Privy::CardIssuingCancellationReason }

      # @!method initialize(environment:, status:, cancellation_reason: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingUpdateCardInput} for more details.
      #
      #   Input for updating the status of a card.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCardStatus] Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
      #
      #   @param cancellation_reason [Symbol, Privy::Models::CardIssuingCancellationReason] Why a lost or stolen card is being canceled.
    end
  end
end
