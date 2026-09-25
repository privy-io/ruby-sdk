# frozen_string_literal: true

module Privy
  module Models
    class RefundMetadata < Privy::Internal::Type::BaseModel
      # @!attribute details
      #   Relay details for a refunded wallet deposit.
      #
      #   @return [Privy::Models::RefundDetails]
      required :details, -> { Privy::RefundDetails }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::RefundMetadata::Type]
      required :type, enum: -> { Privy::RefundMetadata::Type }

      # @!method initialize(details:, type:)
      #   Metadata identifying a refunded wallet deposit.
      #
      #   @param details [Privy::Models::RefundDetails] Relay details for a refunded wallet deposit.
      #
      #   @param type [Symbol, Privy::Models::RefundMetadata::Type]

      # @see Privy::Models::RefundMetadata#type
      module Type
        extend Privy::Internal::Type::Enum

        REFUND = :refund

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
