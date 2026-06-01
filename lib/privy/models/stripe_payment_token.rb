# frozen_string_literal: true

module Privy
  module Models
    class StripePaymentToken < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [String]
      required :type, String

      # @!method initialize(id:, type:)
      #   A saved payment token.
      #
      #   @param id [String]
      #   @param type [String]
    end
  end
end
