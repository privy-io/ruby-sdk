# frozen_string_literal: true

module Privy
  module Models
    class StripeOnrampCheckoutResponse < Privy::Internal::Type::BaseModel
      # @!attribute client_secret
      #
      #   @return [String]
      required :client_secret, String

      # @!attribute transaction_details
      #   Transaction details from checkout.
      #
      #   @return [Privy::Models::StripeTransactionDetails, nil]
      optional :transaction_details, -> { Privy::StripeTransactionDetails }

      # @!method initialize(client_secret:, transaction_details: nil)
      #   Checkout confirmation with client secret.
      #
      #   @param client_secret [String]
      #
      #   @param transaction_details [Privy::Models::StripeTransactionDetails] Transaction details from checkout.
    end
  end
end
