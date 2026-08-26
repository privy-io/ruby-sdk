# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingReplaceCardRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!attribute replacement_reason
      #   Why a card is being replaced.
      #
      #   @return [Symbol, Privy::Models::CardIssuingReplacementReason]
      required :replacement_reason, enum: -> { Privy::CardIssuingReplacementReason }

      # @!method initialize(environment:, replacement_reason:)
      #   Input for replacing a lost, stolen, or expired card.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
      #
      #   @param replacement_reason [Symbol, Privy::Models::CardIssuingReplacementReason] Why a card is being replaced.
    end
  end
end
