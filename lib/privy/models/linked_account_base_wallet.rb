# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountBaseWallet < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountBaseWallet::ChainType]
      required :chain_type, enum: -> { Privy::LinkedAccountBaseWallet::ChainType }

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountBaseWallet::Type]
      required :type, enum: -> { Privy::LinkedAccountBaseWallet::Type }

      # @!method initialize(address:, chain_type:, type:)
      #   Base schema for wallet accounts linked to the user.
      #
      #   @param address [String]
      #   @param chain_type [Symbol, Privy::Models::LinkedAccountBaseWallet::ChainType]
      #   @param type [Symbol, Privy::Models::LinkedAccountBaseWallet::Type]

      # @see Privy::Models::LinkedAccountBaseWallet#chain_type
      module ChainType
        extend Privy::Internal::Type::Enum

        SOLANA = :solana
        ETHEREUM = :ethereum

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Privy::Models::LinkedAccountBaseWallet#type
      module Type
        extend Privy::Internal::Type::Enum

        WALLET = :wallet
        SMART_WALLET = :smart_wallet

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
