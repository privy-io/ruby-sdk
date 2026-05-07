# frozen_string_literal: true

module Privy
  module Models
    class SiweInitRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   The request body for initiating a SIWE ceremony.
      #
      #   @param address [String]
    end
  end
end
