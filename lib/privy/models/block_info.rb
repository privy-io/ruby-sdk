# frozen_string_literal: true

module Privy
  module Models
    class BlockInfo < Privy::Internal::Type::BaseModel
      # @!attribute number
      #   The block number.
      #
      #   @return [Float]
      required :number, Float

      # @!attribute timestamp
      #   The block timestamp.
      #
      #   @return [Float]
      required :timestamp, Float

      # @!method initialize(number:, timestamp:)
      #   Block metadata for a wallet transfer event.
      #
      #   @param number [Float] The block number.
      #
      #   @param timestamp [Float] The block timestamp.
    end
  end
end
