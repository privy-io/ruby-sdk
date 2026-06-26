# frozen_string_literal: true

module Privy
  module Models
    class GetByWalletAddressRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute address
      #   A blockchain wallet address. Ethereum addresses are normalized to EIP-55
      #   checksum format. Solana addresses are validated as base58. All other chain
      #   addresses (Stellar, Tron, Sui, Aptos, etc.) are accepted as-is.
      #
      #   @return [String]
      required :address, String

      # @!attribute include_archived
      #   Include archived wallets in lookup. Defaults to false (archived wallets return
      #   404).
      #
      #   @return [Boolean, nil]
      optional :include_archived, Privy::Internal::Type::Boolean

      # @!method initialize(address:, include_archived: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::GetByWalletAddressRequestBody} for more details.
      #
      #   Request body for looking up a wallet by its blockchain address.
      #
      #   @param address [String] A blockchain wallet address. Ethereum addresses are normalized to EIP-55 checksu
      #
      #   @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false (archived wallets return 4
    end
  end
end
