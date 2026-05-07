# frozen_string_literal: true

module Privy
  module Models
    class OAuthVerifyRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute prat
      #
      #   @return [String]
      required :prat, String

      # @!method initialize(prat:)
      #   The request body for verifying a PRAT.
      #
      #   @param prat [String]
    end
  end
end
