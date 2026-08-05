# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingCustomerInput < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!method initialize(environment:)
      #   Input for getting or creating a cards customer.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
    end
  end
end
