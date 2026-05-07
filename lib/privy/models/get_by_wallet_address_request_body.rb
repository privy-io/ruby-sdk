# frozen_string_literal: true

module Privy
  module Models
    class GetByWalletAddressRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   A blockchain wallet address (Ethereum or Solana).
      #
      #   @return [String]
      required :address, String

      # @!method initialize(address:)
      #   Request body for looking up a wallet by its blockchain address.
      #
      #   @param address [String] A blockchain wallet address (Ethereum or Solana).
    end
  end
end
