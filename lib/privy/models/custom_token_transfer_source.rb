# frozen_string_literal: true

module Privy
  module Models
    class CustomTokenTransferSource < Privy::Internal::Type::BaseModel
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

      # @!attribute amount
      #   @deprecated
      #
      #   Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      #   USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
      #   in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
      #   Deprecated: use the top-level `amount` field instead.
      #
      #   @return [String, nil]
      optional :amount, String

      # @!method initialize(asset_address:, chain:, amount: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CustomTokenTransferSource} for more details.
      #
      #   Source for a transfer identified by a token contract address (EVM) or mint
      #   address (Solana). Use this variant for tokens that are not first-class assets.
      #
      #   @param asset_address [String] The token contract address (EVM) or mint address (Solana) of the asset to transf
      #
      #   @param chain [String] The blockchain network on which to perform the transfer. Supported chains includ
      #
      #   @param amount [String] Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5 USDC
    end
  end
end
