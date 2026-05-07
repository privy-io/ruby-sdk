# frozen_string_literal: true

module Privy
  module Models
    class SiwsInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   The request body for initiating a SIWS ceremony.
      #
      #   @param address [String]
    end
  end
end
