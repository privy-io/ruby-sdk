# frozen_string_literal: true

module Privy
  module Models
    class PasskeyInitInput < Privy::Internal::Type::BaseModel
      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!attribute relying_party
      #
      #   @return [String, nil]
      optional :relying_party, String

      # @!method initialize(token: nil, relying_party: nil)
      #   Input for initiating a passkey ceremony.
      #
      #   @param token [String]
      #   @param relying_party [String]
    end
  end
end
