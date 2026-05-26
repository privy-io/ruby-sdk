# frozen_string_literal: true

module Privy
  module Models
    class GetStripeCryptoCustomerInput < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute auth_intent_id
      #
      #   @return [String]
      required :auth_intent_id, String

      # @!method initialize(id:, auth_intent_id:)
      #   Query params for retrieving a Stripe crypto customer.
      #
      #   @param id [String]
      #   @param auth_intent_id [String]
    end
  end
end
