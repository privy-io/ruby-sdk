# frozen_string_literal: true

module Privy
  module Models
    class SiweAddressInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   Input containing a SIWE wallet address.
      #
      #   @param address [String]
    end
  end
end
