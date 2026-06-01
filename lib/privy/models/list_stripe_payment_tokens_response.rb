# frozen_string_literal: true

module Privy
  module Models
    class ListStripePaymentTokensResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::StripePaymentToken>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::StripePaymentToken] }

      # @!method initialize(data:)
      #   List of payment tokens for a crypto customer.
      #
      #   @param data [Array<Privy::Models::StripePaymentToken>]
    end
  end
end
