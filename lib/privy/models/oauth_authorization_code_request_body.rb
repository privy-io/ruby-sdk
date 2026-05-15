# frozen_string_literal: true

module Privy
  module Models
    class OAuthAuthorizationCodeRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code_challenge
      #
      #   @return [String]
      required :code_challenge, String

      # @!attribute redirect_to
      #
      #   @return [String]
      required :redirect_to, String

      # @!attribute state
      #
      #   @return [String]
      required :state, String

      # @!method initialize(code_challenge:, redirect_to:, state:)
      #   The request body for getting an OAuth authorization code.
      #
      #   @param code_challenge [String]
      #   @param redirect_to [String]
      #   @param state [String]
    end
  end
end
