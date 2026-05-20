# frozen_string_literal: true

module Privy
  module Models
    class DeveloperFee < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount in USD (in decimals).
      #
      #   @return [String]
      required :amount, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::DeveloperFee::Type]
      required :type, enum: -> { Privy::DeveloperFee::Type }

      # @!attribute recipient
      #
      #   @return [String, nil]
      optional :recipient, String

      # @!method initialize(amount:, type:, recipient: nil)
      #   Estimated fee paid to the developer.
      #
      #   @param amount [String] Amount in USD (in decimals).
      #
      #   @param type [Symbol, Privy::Models::DeveloperFee::Type]
      #
      #   @param recipient [String]

      # @see Privy::Models::DeveloperFee#type
      module Type
        extend Privy::Internal::Type::Enum

        DEVELOPER = :developer

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
