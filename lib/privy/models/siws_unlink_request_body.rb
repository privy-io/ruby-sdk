# frozen_string_literal: true

module Privy
  module Models
    class SiwsUnlinkRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   The request body for unlinking a SIWS ceremony.
      #
      #   @param address [String]
    end
  end
end
