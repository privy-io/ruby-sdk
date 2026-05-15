# frozen_string_literal: true

module Privy
  module Models
    class KrakenEmbedCustomOrderStatus < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::KrakenEmbedCustomOrderStatus::Status]
      required :status, enum: -> { Privy::KrakenEmbedCustomOrderStatus::Status }

      # @!attribute reason
      #
      #   @return [Object, nil]
      optional :reason, Privy::Internal::Type::Unknown

      # @!method initialize(status:, reason: nil)
      #   Custom order status with optional reason for cancelled or paused states.
      #
      #   @param status [Symbol, Privy::Models::KrakenEmbedCustomOrderStatus::Status]
      #   @param reason [Object]

      # @see Privy::Models::KrakenEmbedCustomOrderStatus#status
      module Status
        extend Privy::Internal::Type::Enum

        ACTIVE = :active
        COMPLETED = :completed
        CANCELLED = :cancelled
        PAUSED = :paused

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
