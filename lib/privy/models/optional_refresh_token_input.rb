# frozen_string_literal: true

module Privy
  module Models
    class OptionalRefreshTokenInput < Privy::Internal::Type::BaseModel
      # @!attribute refresh_token
      #
      #   @return [String, nil]
      optional :refresh_token, String

      # @!method initialize(refresh_token: nil)
      #   The input for refreshing a session or logging out.
      #
      #   @param refresh_token [String]
    end
  end
end
