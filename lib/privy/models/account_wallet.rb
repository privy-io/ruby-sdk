# frozen_string_literal: true

module Privy
  module Models
    class AccountWallet < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The wallet ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute address
      #   The on-chain address of the wallet.
      #
      #   @return [String]
      required :address, String

      # @!attribute chain_type
      #   The wallet chain types that offer first class support.
      #
      #   @return [Symbol, Privy::Models::FirstClassChainType]
      required :chain_type, enum: -> { Privy::FirstClassChainType }

      # @!method initialize(id:, address:, chain_type:)
      #   A wallet belonging to a digital asset account.
      #
      #   @param id [String] The wallet ID.
      #
      #   @param address [String] The on-chain address of the wallet.
      #
      #   @param chain_type [Symbol, Privy::Models::FirstClassChainType] The wallet chain types that offer first class support.
    end
  end
end
