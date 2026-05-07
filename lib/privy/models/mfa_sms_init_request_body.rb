# frozen_string_literal: true

module Privy
  module Models
    # The request body for initiating a SMS MFA flow.
    module MfaSMSInitRequestBody
      extend Privy::Internal::Type::Union

      # Input for verifying SMS MFA.
      variant -> { Privy::MfaSMSInitVerifyInput }

      # Input for enrolling SMS MFA.
      variant -> { Privy::MfaSMSInitEnrollInput }

      # @!method self.variants
      #   @return [Array(Privy::Models::MfaSMSInitVerifyInput, Privy::Models::MfaSMSInitEnrollInput)]
    end
  end
end
