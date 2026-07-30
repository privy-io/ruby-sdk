# frozen_string_literal: true

module Privy
  module Models
    class WalletEntity < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The Privy DID of the entity.
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
      #   @param id [String] The Privy DID of the entity.
      #
      #   @param type [Symbol, Privy::Models::WalletEntity::Type]

      # @see Privy::Models::WalletEntity#type
      module Type
        extend Privy::Internal::Type::Enum

        USER = :user

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
