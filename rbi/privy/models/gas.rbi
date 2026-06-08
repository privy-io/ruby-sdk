# typed: strong

module Privy
  module Models
    class Gas < Privy::Internal::Type::BaseModel
      OrHash = T.type_alias { T.any(Privy::Gas, Privy::Internal::AnyHash) }

      # Gas cost in the gas token as a human-readable decimal string (e.g. "0.0001").
      sig { returns(String) }
      attr_accessor :amount

      # Gas cost in the gas token's base units (e.g. wei).
      sig { returns(String) }
      attr_accessor :base_amount

      # Gas token symbol (e.g. "ETH", "USDC").
      sig { returns(String) }
      attr_accessor :gas_asset

      # Gas cost for a blockchain action. Includes both raw base-unit amount and a
      # human-readable decimal string, plus the gas token symbol.
      sig do
        params(amount: String, base_amount: String, gas_asset: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # Gas cost in the gas token as a human-readable decimal string (e.g. "0.0001").
        amount:,
        # Gas cost in the gas token's base units (e.g. wei).
        base_amount:,
        # Gas token symbol (e.g. "ETH", "USDC").
        gas_asset:
      )
      end

      sig do
        override.returns(
          { amount: String, base_amount: String, gas_asset: String }
        )
      end
      def to_hash
      end
    end
  end
end
