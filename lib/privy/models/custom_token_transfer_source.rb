# frozen_string_literal: true

module Privy
  module Models
    class CustomTokenTransferSource < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      #   USDC, "0.01" for 0.01 ETH). Not in the smallest on-chain unit (wei, lamports,
      #   etc.).
      #
      #   @return [String]
      required :amount, String

      # @!attribute asset_address
      #   The token contract address (EVM) or mint address (Solana) of the asset to
      #   transfer.
      #
      #   @return [String]
      required :asset_address, String

      # @!attribute chain
      #   The blockchain network on which to perform the transfer. Supported chains
      #   include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
      #   respective testnets.
      #
      #   @return [String]
      required :chain, String

      # @!method initialize(amount:, asset_address:, chain:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CustomTokenTransferSource} for more details.
      #
      #   Source for a transfer identified by a token contract address (EVM) or mint
      #   address (Solana). Use this variant for tokens that are not first-class assets.
      #
      #   @param amount [String] Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5 USDC
      #
      #   @param asset_address [String] The token contract address (EVM) or mint address (Solana) of the asset to transf
      #
      #   @param chain [String] The blockchain network on which to perform the transfer. Supported chains includ
    end
  end
end
