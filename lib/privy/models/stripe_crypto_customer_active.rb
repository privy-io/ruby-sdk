# frozen_string_literal: true

module Privy
  module Models
    class StripeCryptoCustomerActive < Privy::Internal::Type::BaseModel
      # @!attribute crypto_customer_id
      #
      #   @return [String]
      required :crypto_customer_id, String

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::StripeCryptoCustomerActive::Status]
      required :status, enum: -> { Privy::StripeCryptoCustomerActive::Status }

      # @!attribute verifications
      #
      #   @return [Array<Privy::Models::StripeVerification>]
      required :verifications, -> { Privy::Internal::Type::ArrayOf[Privy::StripeVerification] }

      # @!method initialize(crypto_customer_id:, status:, verifications:)
      #   Active onramp session with customer verifications.
      #
      #   @param crypto_customer_id [String]
      #   @param status [Symbol, Privy::Models::StripeCryptoCustomerActive::Status]
      #   @param verifications [Array<Privy::Models::StripeVerification>]

      # @see Privy::Models::StripeCryptoCustomerActive#status
      module Status
        extend Privy::Internal::Type::Enum

        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
