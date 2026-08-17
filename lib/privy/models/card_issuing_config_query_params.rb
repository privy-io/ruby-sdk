# frozen_string_literal: true

module Privy
  module Models
    class CardIssuingConfigQueryParams < Privy::Internal::Type::BaseModel
      # @!attribute environment
      #   The Privy API environment.
      #
      #   @return [Symbol, Privy::Models::Environment]
      required :environment, enum: -> { Privy::Environment }

      # @!method initialize(environment:)
      #   Query parameters for reading an app's card-issuing client configuration.
      #
      #   @param environment [Symbol, Privy::Models::Environment] The Privy API environment.
    end
  end
end
