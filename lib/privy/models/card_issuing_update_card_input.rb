# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingUpdateCardInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute cancellation_reason
      #   Why a lost or stolen card is being canceled.
      #
      #   @return [Symbol, Privy::Models::CardIssuingCancellationReason, nil]
      optional :cancellation_reason, enum: -> { Privy::CardIssuingCancellationReason }

      # @!attribute pin
      #   Encrypted PIN to set on the card.
      #
      #   @return [Privy::Models::CardIssuingPinUpdate, nil]
      optional :pin, -> { Privy::CardIssuingPinUpdate }

      # @!attribute status
      #   Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
      #   canceled closes it.
      #
      #   @return [Symbol, Privy::Models::CardIssuingCardStatus, nil]
      optional :status, enum: -> { Privy::CardIssuingCardStatus }

      # @!method initialize(environment:, cancellation_reason: nil, pin: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CardIssuingUpdateCardInput} for more details.
      #
      #   Input for updating a card.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param cancellation_reason [Symbol, Privy::Models::CardIssuingCancellationReason] Why a lost or stolen card is being canceled.
      #
      #   @param pin [Privy::Models::CardIssuingPinUpdate] Encrypted PIN to set on the card.
      #
      #   @param status [Symbol, Privy::Models::CardIssuingCardStatus] Lifecycle status of a card. Active unfreezes the card, inactive freezes it, and
    end
  end
end
