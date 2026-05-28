# frozen_string_literal: true

module Privy
  module Models
    class StripeCryptoCustomerNone < Privy::Internal::Type::BaseModel
      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::StripeCryptoCustomerNone::Status]
      required :status, enum: -> { Privy::StripeCryptoCustomerNone::Status }

      # @!method initialize(status:)
      #   No onramp session. User must authenticate via Link.
      #
      #   @param status [Symbol, Privy::Models::StripeCryptoCustomerNone::Status]

      # @see Privy::Models::StripeCryptoCustomerNone#status
      module Status
        extend Privy::Internal::Type::Enum

        NONE = :none

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
