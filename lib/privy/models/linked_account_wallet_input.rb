# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountWalletInput < Privy::Internal::Type::BaseModel
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
      #
      #   @return [Symbol, :wallet]
      required :type, const: :wallet

      # @!method initialize(address:, chain_type:, type: :wallet)
      #   The payload for importing a wallet account.
      #
      #   @param address [String]
      #
      #   @param chain_type [Symbol, Privy::Models::FirstClassChainType] The wallet chain types that offer first class support.
      #
      #   @param type [Symbol, :wallet]
    end
  end
end
