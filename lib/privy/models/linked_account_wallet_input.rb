# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountWalletInput < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountWalletInput::ChainType]
      required :chain_type, enum: -> { Privy::LinkedAccountWalletInput::ChainType }

      # @!attribute type
      #
      #   @return [Symbol, :wallet]
      required :type, const: :wallet

      # @!method initialize(address:, chain_type:, type: :wallet)
      #   The payload for importing a wallet account.
      #
      #   @param address [String]
      #   @param chain_type [Symbol, Privy::Models::LinkedAccountWalletInput::ChainType]
      #   @param type [Symbol, :wallet]

      # @see Privy::Models::LinkedAccountWalletInput#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        ETHEREUM = :ethereum
        SOLANA = :solana

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
