# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountBaseWallet < Privy::Internal::Type::BaseModel
      # @!attribute address
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #   The wallet chain types that offer first class support.
      #
      #   @return [Symbol, Privy::Models::FirstClassChainType]
      required :chain_type, enum: -> { Privy::FirstClassChainType }

      # @!attribute type
      #   The type of wallet linked account (external wallet or smart wallet).
      #
      #   @return [Symbol, Privy::Models::LinkedAccountBaseWalletType]
      required :type, enum: -> { Privy::LinkedAccountBaseWalletType }

      # @!method initialize(address:, chain_type:, type:)
      #   Base schema for wallet accounts linked to the user.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::FirstClassChainType] The wallet chain types that offer first class support.
      #
      #   @param type [Symbol, Privy::Models::LinkedAccountBaseWalletType] The type of wallet linked account (external wallet or smart wallet).
    end
  end
end
