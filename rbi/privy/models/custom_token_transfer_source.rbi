# typed: strong

module Privy
  module Models
    class CustomTokenTransferSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CustomTokenTransferSource, Privy::Internal::AnyHash)
        end

      # The token contract address (EVM) or mint address (Solana) of the asset to
      # transfer.
      sig { returns(String) }
      attr_accessor :asset_address

      # The blockchain network on which to perform the transfer. Supported chains
      # include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
      # respective testnets.
      sig { returns(String) }
      attr_accessor :chain

      # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      # USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
      # in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
      # Deprecated: use the top-level `amount` field instead.
      sig { returns(T.nilable(String)) }
      attr_reader :amount

      sig { params(amount: String).void }
      attr_writer :amount

      # Source for a transfer identified by a token contract address (EVM) or mint
      # address (Solana). Use this variant for tokens that are not first-class assets.
      sig do
        params(asset_address: String, chain: String, amount: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The token contract address (EVM) or mint address (Solana) of the asset to
        # transfer.
        asset_address:,
        # The blockchain network on which to perform the transfer. Supported chains
        # include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
        # respective testnets.
        chain:,
        # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
        # USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
        # in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
        # Deprecated: use the top-level `amount` field instead.
        amount: nil
      )
      end

      sig do
        override.returns(
          { asset_address: String, chain: String, amount: String }
        )
      end
      def to_hash
      end
    end
  end
end
