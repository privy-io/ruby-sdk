# frozen_string_literal: true

module Privy
  module Models
    class OAuthInitRecoveryInput < Privy::Internal::Type::BaseModel
      # @!attribute redirect_to
      #
      #   @return [String]
      required :redirect_to, String

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute code_challenge
      #
      #   @return [String, nil]
      optional :code_challenge, String

      # @!attribute state_code
      #
      #   @return [String, nil]
      optional :state_code, String

      # @!method initialize(redirect_to:, token: nil, code_challenge: nil, state_code: nil)
      #   The input for initiating an OAuth recovery flow.
      #
      #   @param redirect_to [String]
      #   @param token [String]
      #   @param code_challenge [String]
      #   @param state_code [String]
    end
  end
end
