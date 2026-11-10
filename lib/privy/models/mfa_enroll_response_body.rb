# frozen_string_literal: true

module Privy
  module Models
    class MfaEnrollResponseBody < Privy::Models::User
      # @!attribute mfa_token
      #
      #   @return [String, nil]
      optional :mfa_token, String

      # @!method initialize(mfa_token: nil)
      #   The enrolled user, with an MFA token only when adding the first MFA method.
      #
      #   @param mfa_token [String]
    end
  end
end
