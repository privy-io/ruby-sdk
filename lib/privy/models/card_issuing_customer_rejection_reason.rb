# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerRejectionReason < Privy::Internal::Type::BaseModel
      # @!attribute reason
      #
      #   @return [String]
      required :reason, String

      # @!method initialize(reason:)
      #   A customer-facing reason the cards customer was rejected.
      #
      #   @param reason [String]
    end
  end
end
