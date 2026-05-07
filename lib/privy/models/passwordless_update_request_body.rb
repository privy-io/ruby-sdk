# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessUpdateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute code
      #
      #   @return [String]
      required :code, String

      # @!attribute new_address
      #
      #   @return [String]
      required :new_address, String, api_name: :newAddress

      # @!attribute old_address
      #
      #   @return [String]
      required :old_address, String, api_name: :oldAddress

      # @!method initialize(code:, new_address:, old_address:)
      #   The request body for updating a passwordless account.
      #
      #   @param code [String]
      #   @param new_address [String]
      #   @param old_address [String]
    end
  end
end
