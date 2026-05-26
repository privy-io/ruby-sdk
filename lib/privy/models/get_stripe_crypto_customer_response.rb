# frozen_string_literal: true

module Privy
  module Models
    class GetStripeCryptoCustomerResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute verifications
      #
      #   @return [Array<Privy::Models::StripeVerification>, nil]
      optional :verifications, -> { Privy::Internal::Type::ArrayOf[Privy::StripeVerification] }

      # @!method initialize(id:, verifications: nil)
      #   A Stripe CryptoCustomer with verification status.
      #
      #   @param id [String]
      #   @param verifications [Array<Privy::Models::StripeVerification>]
    end
  end
end
