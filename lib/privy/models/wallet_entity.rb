# frozen_string_literal: true

module Privy
  module Models
    class WalletEntity < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   A Privy entity ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute type
      #   The type of entity a wallet is attributed to.
      #
      #   @return [Symbol, Privy::Models::WalletEntityType]
      required :type, enum: -> { Privy::WalletEntityType }

      # @!method initialize(id:, type:)
      #   The entity a wallet is attributed to.
      #
      #   @param id [String] A Privy entity ID.
      #
      #   @param type [Symbol, Privy::Models::WalletEntityType] The type of entity a wallet is attributed to.
    end
  end
end
