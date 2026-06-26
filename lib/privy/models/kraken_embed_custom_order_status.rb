# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderStatus < Privy::Internal::Type::BaseModel
      # @!attribute status
      #   The lifecycle state of a custom order.
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderStatusValue]
      required :status, enum: -> { Privy::KrakenEmbedCustomOrderStatusValue }

      # @!attribute reason
      #
      #   @return [Object, nil]
      optional :reason, Privy::Internal::Type::Unknown

      # @!method initialize(status:, reason: nil)
      #   Custom order status with optional reason for cancelled or paused states.
      #
      #   @param status [Symbol, Privy::Models::KrakenEmbedCustomOrderStatusValue] The lifecycle state of a custom order.
      #
      #   @param reason [Object]
    end
  end
end
