# typed: strong

module Privy
  module Models
    class DepositAccountCryptoQuoteAsset < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DepositAccountCryptoQuoteAsset, Privy::Internal::AnyHash)
        end

      # Named asset ID (e.g. "usdc", "eth") or chain-specific token contract or mint
      # address
      sig { returns(String) }
      attr_accessor :asset

      # Friendly chain name or CAIP-2 identifier (e.g. "base", "eip155:8453")
      sig { returns(String) }
      attr_accessor :chain

      # An asset and chain for an indicative crypto deposit-account quote.
      sig { params(asset: String, chain: String).returns(T.attached_class) }
      def self.new(
        # Named asset ID (e.g. "usdc", "eth") or chain-specific token contract or mint
        # address
        asset:,
        # Friendly chain name or CAIP-2 identifier (e.g. "base", "eip155:8453")
        chain:
      )
      end

      sig { override.returns({ asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
