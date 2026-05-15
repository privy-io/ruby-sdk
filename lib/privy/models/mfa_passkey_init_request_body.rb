# frozen_string_literal: true

module Privy
  module Models
    class MfaPasskeyInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(relying_party: nil)
      #   The request body for initiating a passkey MFA flow.
      #
      #   @param relying_party [String]
    end
  end
end
