# frozen_string_literal: true

module Privy
  module Models
    class DenylistSolanaAddressInput < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::DenylistSolanaAddressInput::Type]
      required :type, enum: -> { Privy::DenylistSolanaAddressInput::Type }

      # @!attribute value
      #
      #   @return [String]
      required :value, String

      # @!method initialize(type:, value:)
      #   Denylist input for a Solana wallet address, which blocks SIWS logins.
      #
      #   @param type [Symbol, Privy::Models::DenylistSolanaAddressInput::Type]
      #   @param value [String]

      # @see Privy::Models::DenylistSolanaAddressInput#type
      module Type
        extend Privy::Internal::Type::Enum

        SOLANA_ADDRESS = :solanaAddress

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
