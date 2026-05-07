# frozen_string_literal: true

module Privy
  module Models
    class PasswordlessUnlinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   The request body for unlinking a passwordless account.
      #
      #   @param address [String]
    end
  end
end
