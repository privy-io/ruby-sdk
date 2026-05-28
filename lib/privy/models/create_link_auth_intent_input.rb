# frozen_string_literal: true

module Privy
  module Models
    class CreateLinkAuthIntentInput < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!method initialize(email: nil)
      #   Input for creating a Link auth intent to initiate Stripe onramp authentication.
      #
      #   @param email [String]
    end
  end
end
