# typed: strong

module Privy
  module Models
    class NamedTokenTransferSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::NamedTokenTransferSource, Privy::Internal::AnyHash)
        end

      # The asset to transfer. Supported: 'usdc', 'usdb', 'usdt', 'pathusd'
      # (stablecoins), 'eth' (native Ethereum), 'sol' (native Solana).
      sig { returns(String) }
      attr_accessor :asset

      # The blockchain network on which to perform the transfer. Supported chains
      # include: 'tempo', 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
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

      # Source for a transfer identified by a named asset (e.g. "usdc", "eth"). Use this
      # variant for first-class assets maintained by Privy.
      sig do
        params(asset: String, chain: String, amount: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # The asset to transfer. Supported: 'usdc', 'usdb', 'usdt', 'pathusd'
        # (stablecoins), 'eth' (native Ethereum), 'sol' (native Solana).
        asset:,
        # The blockchain network on which to perform the transfer. Supported chains
        # include: 'tempo', 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and their
        # respective testnets.
        chain:,
        # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
        # USDC, "0.01" for 0.01 ETH). For exact_input, specifies the amount to send. Not
        # in the smallest on-chain unit (wei, lamports, etc.). Maximum 100 characters.
        # Deprecated: use the top-level `amount` field instead.
        amount: nil
      )
      end

      sig { override.returns({ asset: String, chain: String, amount: String }) }
      def to_hash
      end
    end
  end
end
