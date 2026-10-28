# frozen_string_literal: true

module Privy
  module Models
    module Users
      class PasskeyMfaInitRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute relying_party
        #   Origin where the authenticator runs, such as https://app.example.com.
        #
        #   @return [String]
        required :relying_party, String

        # @!method initialize(relying_party:)
        #   Starts a passkey MFA ceremony for the specified relying party origin.
        #
        #   @param relying_party [String] Origin where the authenticator runs, such as https://app.example.com.
      end
    end
  end
end
