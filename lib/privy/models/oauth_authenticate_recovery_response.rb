# frozen_string_literal: true

module Privy
  module Models
    class OAuthAuthenticateRecoveryResponse < Privy::Internal::Type::BaseModel
      # @!attribute access_token
      #
      #   @return [String]
      required :access_token, String

      # @!method initialize(access_token:)
      #   The response from authenticating with OAuth for recovery.
      #
      #   @param access_token [String]
    end
  end
end
