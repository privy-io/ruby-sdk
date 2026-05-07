# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessLinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute email
      #
      #   @return [String]
      required :email, String

      # @!method initialize(code:, email:)
      #   The request body for linking a passwordless account.
      #
      #   @param code [String]
      #   @param email [String]
    end
  end
end
