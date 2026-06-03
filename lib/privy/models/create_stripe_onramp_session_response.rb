# frozen_string_literal: true

module Privy
  module Models
    class CreateStripeOnrampSessionResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute session_id
      #
      #   @return [String]
      required :session_id, String

      # @!attribute transaction_details
      #   Transaction details returned from a Stripe onramp session.
      #
      #   @return [Privy::Models::CreateStripeOnrampSessionResponse::TransactionDetails, nil]
      optional :transaction_details, -> { Privy::CreateStripeOnrampSessionResponse::TransactionDetails }

      # @!method initialize(id:, session_id:, transaction_details: nil)
      #   The created onramp session.
      #
      #   @param id [String]
      #
      #   @param session_id [String]
      #
      #   @param transaction_details [Privy::Models::CreateStripeOnrampSessionResponse::TransactionDetails] Transaction details returned from a Stripe onramp session.

      # @see Privy::Models::CreateStripeOnrampSessionResponse#transaction_details
      class TransactionDetails < Privy::Models::OnrampSessionTransactionDetails
        # @!method initialize
        #   Transaction details returned from a Stripe onramp session.
      end
    end
  end
end
