# typed: strong

module Privy
  module Models
    class CardIssuingCreateCardInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingCreateCardInput, Privy::Internal::AnyHash)
        end

      # The asset to fund the card. Must be 'usdc' on EVM and Solana, or 'path_usd' on
      # Tempo.
      sig { returns(String) }
      attr_accessor :asset

      # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      sig { returns(String) }
      attr_accessor :chain_id

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      sig { returns(String) }
      attr_accessor :wallet_id

      # Input for creating a virtual Stripe Issuing card for a Privy wallet.
      sig do
        params(
          asset: String,
          chain_id: String,
          environment: Privy::Environment::OrSymbol,
          wallet_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # The asset to fund the card. Must be 'usdc' on EVM and Solana, or 'path_usd' on
        # Tempo.
        asset:,
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        chain_id:,
        # The Privy API environment.
        environment:,
        wallet_id:
      )
      end

      sig do
        override.returns(
          {
            asset: String,
            chain_id: String,
            environment: Privy::Environment::OrSymbol,
            wallet_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
