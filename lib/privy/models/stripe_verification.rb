# frozen_string_literal: true

module Privy
  module Models
    class StripeVerification < Privy::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!method initialize(name:, status:)
      #   A verification entry on a CryptoCustomer.
      #
      #   @param name [String]
      #   @param status [String]
    end
  end
end
