# frozen_string_literal: true

module Privy
  module Models
    class SuccessResponse < Privy::Internal::Type::BaseModel
      # @!attribute success
      #
      #   @return [Boolean]
      required :success, Privy::Internal::Type::Boolean

      # @!method initialize(success:)
      #   A simple success response.
      #
      #   @param success [Boolean]
    end
  end
end
