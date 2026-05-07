# frozen_string_literal: true

module Privy
  module Models
    class MfaTotpInput < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!method initialize(code:)
      #   The input for verifying a TOTP MFA code.
      #
      #   @param code [String]
    end
  end
end
