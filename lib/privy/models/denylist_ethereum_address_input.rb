# frozen_string_literal: true

module Privy
  module Models
    class DenylistEthereumAddressInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::DenylistEthereumAddressInput::Type]
      required :type, enum: -> { Privy::DenylistEthereumAddressInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Denylist input for an Ethereum wallet address, which blocks SIWE logins.
      #
      #   @param type [Symbol, Privy::Models::DenylistEthereumAddressInput::Type]
      #   @param value [String]

      # @see Privy::Models::DenylistEthereumAddressInput#type
      module Type
        extend Privy::Internal::Type::Enum

        ETHEREUM_ADDRESS = :ethereumAddress

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
