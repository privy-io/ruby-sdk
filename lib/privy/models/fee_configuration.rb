# frozen_string_literal: true

module Privy
  module Models
    class FeeConfiguration < Privy::Internal::Type::BaseModel
      # @!attribute type
      #   Discriminator: total fee specified in BPS.
      #
      #   @return [Symbol, Privy::Models::FeeConfiguration::Type]
      required :type, enum: -> { Privy::FeeConfiguration::Type }

      # @!attribute value
      #   Total fee in basis points (1 bps = 0.01%).
      #
      #   @return [Integer]
      required :value, Integer

      # @!method initialize(type:, value:)
      #   Total fees assessed on a transfer, in BPS
      #
      #   @param type [Symbol, Privy::Models::FeeConfiguration::Type] Discriminator: total fee specified in BPS.
      #
      #   @param value [Integer] Total fee in basis points (1 bps = 0.01%).

      # Discriminator: total fee specified in BPS.
      #
      # @see Privy::Models::FeeConfiguration#type
      module Type
        extend Privy::Internal::Type::Enum

        TOTAL_FEE_BPS = :total_fee_bps

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
