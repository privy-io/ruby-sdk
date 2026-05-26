# frozen_string_literal: true

module Privy
  module Models
    class StripeTransactionDetails < Privy::Internal::Type::BaseModel
      # @!attribute last_error
      #
      #   @return [String, nil]
      optional :last_error, String, nil?: true

      # @!method initialize(last_error: nil)
      #   Transaction details from checkout.
      #
      #   @param last_error [String, nil]
    end
  end
end
