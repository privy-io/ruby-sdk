# frozen_string_literal: true

module Privy
  module Models
    class RelayerFee < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount in USD (in decimals).
      #
      #   @return [String]
      required :amount, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::RelayerFee::Type]
      required :type, enum: -> { Privy::RelayerFee::Type }

      # @!attribute recipient
      #
      #   @return [String, nil]
      optional :recipient, String

      # @!method initialize(amount:, type:, recipient: nil)
      #   Estimated fee paid to the relayer.
      #
      #   @param amount [String] Amount in USD (in decimals).
      #
      #   @param type [Symbol, Privy::Models::RelayerFee::Type]
      #
      #   @param recipient [String]

      # @see Privy::Models::RelayerFee#type
      module Type
        extend Privy::Internal::Type::Enum

        RELAYER = :relayer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
