# frozen_string_literal: true

module Privy
  module Models
    class PrivyFee < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount in USD (in decimals).
      #
      #   @return [String]
      required :amount, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::PrivyFee::Type]
      required :type, enum: -> { Privy::PrivyFee::Type }

      # @!attribute recipient
      #
      #   @return [String, nil]
      optional :recipient, String

      # @!method initialize(amount:, type:, recipient: nil)
      #   Estimated fee paid to Privy.
      #
      #   @param amount [String] Amount in USD (in decimals).
      #
      #   @param type [Symbol, Privy::Models::PrivyFee::Type]
      #
      #   @param recipient [String]

      # @see Privy::Models::PrivyFee#type
      module Type
        extend Privy::Internal::Type::Enum

        PRIVY = :privy

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
