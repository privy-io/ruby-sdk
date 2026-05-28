# frozen_string_literal: true

module Privy
  module Models
    class StripeCryptoCustomerExpired < Privy::Internal::Type::BaseModel
      # @!attribute crypto_customer_id
      #
      #   @return [String]
      required :crypto_customer_id, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::StripeCryptoCustomerExpired::Status]
      required :status, enum: -> { Privy::StripeCryptoCustomerExpired::Status }

      # @!method initialize(crypto_customer_id:, status:)
      #   Expired onramp session. Token refresh failed, re-authentication required.
      #
      #   @param crypto_customer_id [String]
      #   @param status [Symbol, Privy::Models::StripeCryptoCustomerExpired::Status]

      # @see Privy::Models::StripeCryptoCustomerExpired#status
      module Status
        extend Privy::Internal::Type::Enum

        EXPIRED = :expired

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
