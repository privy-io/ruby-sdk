# frozen_string_literal: true

module Privy
  module Models
    class AggregationWindow < Privy::Internal::Type::BaseModel
      # @!attribute seconds
      #   Duration of the rolling window in seconds (1-72 hours).
      #
      #   @return [Integer]
      required :seconds, Integer

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::AggregationWindow::Type]
      required :type, enum: -> { Privy::AggregationWindow::Type }

      # @!method initialize(seconds:, type:)
      #   A rolling time window defined by a duration in seconds.
      #
      #   @param seconds [Integer] Duration of the rolling window in seconds (1-72 hours).
      #
      #   @param type [Symbol, Privy::Models::AggregationWindow::Type]

      # @see Privy::Models::AggregationWindow#type
      module Type
        extend Privy::Internal::Type::Enum

        ROLLING = :rolling

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
