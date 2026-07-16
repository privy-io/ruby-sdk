# typed: strong

module Privy
  module Models
    class TokenTransferDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TokenTransferDestination, Privy::Internal::AnyHash)
        end

      # Recipient address (hex for EVM, base58 for Solana, base58check for Tron)
      sig { returns(String) }
      attr_accessor :address

      # The destination asset. Required for cross-asset transfers (e.g., source 'usdt'
      # to destination 'usdc').
      sig { returns(T.nilable(String)) }
      attr_reader :asset

      sig { params(asset: String).void }
      attr_writer :asset

      # The destination blockchain network. Required for cross-chain transfers (e.g.,
      # source 'tempo' to destination 'base').
      sig { returns(T.nilable(String)) }
      attr_reader :chain

      sig { params(chain: String).void }
      attr_writer :chain

      # The destination address for a token transfer. Optionally specify a different
      # asset or chain for cross-asset or cross-chain transfers.
      sig do
        params(address: String, asset: String, chain: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Recipient address (hex for EVM, base58 for Solana, base58check for Tron)
        address:,
        # The destination asset. Required for cross-asset transfers (e.g., source 'usdt'
        # to destination 'usdc').
        asset: nil,
        # The destination blockchain network. Required for cross-chain transfers (e.g.,
        # source 'tempo' to destination 'base').
        chain: nil
      )
      end

      sig do
        override.returns({ address: String, asset: String, chain: String })
      end
      def to_hash
      end
    end
  end
end
