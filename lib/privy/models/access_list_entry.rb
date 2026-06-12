# frozen_string_literal: true

module Privy
  module Models
    class AccessListEntry < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute storage_keys
      #
      #   @return [Array<String>]
      required :storage_keys, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(address:, storage_keys:)
      #   An entry in an EIP-2930 access list, specifying an address and its storage keys.
      #
      #   @param address [String]
      #   @param storage_keys [Array<String>]
    end
  end
end
