# frozen_string_literal: true

module Privy
  module Models
    class OAuthVerifyResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute verified
      #
      #   @return [Boolean]
      required :verified, Privy::Internal::Type::Boolean

      # @!method initialize(verified:)
      #   The response body when verifying a PRAT.
      #
      #   @param verified [Boolean]
    end
  end
end
