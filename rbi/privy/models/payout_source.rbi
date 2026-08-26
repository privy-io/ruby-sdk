# typed: strong

module Privy
  module Models
    class PayoutSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::PayoutSource, Privy::Internal::AnyHash) }

      # Amount to offramp, in the asset's standard units (e.g. "100.00").
      sig { returns(String) }
      attr_accessor :amount

      # Source crypto asset (e.g. "usdc").
      sig { returns(String) }
      attr_accessor :asset

      # Source chain (e.g. "base").
      sig { returns(String) }
      attr_accessor :chain

      # The source crypto asset, chain, and amount for a payout.
      sig do
        params(amount: String, asset: String, chain: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Amount to offramp, in the asset's standard units (e.g. "100.00").
        amount:,
        # Source crypto asset (e.g. "usdc").
        asset:,
        # Source chain (e.g. "base").
        chain:
      )
      end

      sig { override.returns({ amount: String, asset: String, chain: String }) }
      def to_hash
      end
    end
  end
end
