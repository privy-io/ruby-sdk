# frozen_string_literal: true

module Privy
  module Models
    # The request body for initiating an email MFA flow.
    module MfaEmailInitRequestBody
      extend Privy::Internal::Type::Union

      # Input for verifying email MFA.
      variant -> { Privy::MfaEmailInitVerifyInput }

      # Input for enrolling email MFA.
      variant -> { Privy::MfaEmailInitEnrollInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::MfaEmailInitVerifyInput, Privy::Models::MfaEmailInitEnrollInput)]
    end
  end
end
