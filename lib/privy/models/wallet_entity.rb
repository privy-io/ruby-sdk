# frozen_string_literal: true

module Privy
  module Models
    class WalletEntity < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The Privy entity ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::WalletEntity::Type]
      required :type, enum: -> { Privy::WalletEntity::Type }

      # @!method initialize(id:, type:)
      #   The entity a wallet is attributed to.
      #
      #   @param id [String] The Privy entity ID.
      #
      #   @param type [Symbol, Privy::Models::WalletEntity::Type]

      # @see Privy::Models::WalletEntity#type
      module Type
        extend Privy::Internal::Type::Enum

        USER = :user
        ORGANIZATION = :organization

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
