# frozen_string_literal: true

module Privy
  module Models
    class SiwsAddressInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   Input containing a SIWS wallet address.
      #
      #   @param address [String]
    end
  end
end
