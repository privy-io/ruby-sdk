# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!attribute token
      #
      #   @return [String, nil]
      optional :token, String

      # @!method initialize(email:, token: nil)
      #   The request body for initiating a passwordless ceremony.
      #
      #   @param email [String]
      #   @param token [String]
    end
  end
end
