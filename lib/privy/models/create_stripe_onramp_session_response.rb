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
      #   @return [Privy::Models::OnrampSessionTransactionDetails, nil]
      optional :transaction_details, -> { Privy::OnrampSessionTransactionDetails }, nil?: true

      # @!method initialize(id:, session_id:, transaction_details: nil)
      #   The created onramp session.
      #
      #   @param id [String]
      #
      #   @param session_id [String]
      #
      #   @param transaction_details [Privy::Models::OnrampSessionTransactionDetails, nil] Transaction details returned from a Stripe onramp session.
    end
  end
end
