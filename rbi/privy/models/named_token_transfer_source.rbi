# typed: strong

module Privy
  module Models
    class NamedTokenTransferSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::NamedTokenTransferSource, Privy::Internal::AnyHash)
        end

      # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      # USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
      # in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
      sig { returns(String) }
      attr_accessor :amount

      # The asset to transfer. Supported: 'usdc', 'usdb', 'usdt' (stablecoins), 'eth'
      # (native Ethereum), 'sol' (native Solana).
      sig { returns(String) }
      attr_accessor :asset

      # The blockchain network on which to perform the transfer. Supported chains
      # include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
      # respective testnets.
      sig { returns(String) }
      attr_accessor :chain

      # Source for a transfer identified by a named asset (e.g. "usdc", "eth"). Use this
      # variant for first-class assets maintained by Privy.
      sig do
        params(amount: String, asset: String, chain: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
        # USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
        # in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
        amount:,
        # The asset to transfer. Supported: 'usdc', 'usdb', 'usdt' (stablecoins), 'eth'
        # (native Ethereum), 'sol' (native Solana).
        asset:,
        # The blockchain network on which to perform the transfer. Supported chains
        # include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
        # respective testnets.
        chain:
      )
      end

      sig { override.returns({ amount: String, asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
