# typed: strong

module Privy
  module Models
    class EthereumYieldClaimReward < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldClaimReward, Privy::Internal::AnyHash)
        end

      # Amount claimed in the smallest unit.
      sig { returns(String) }
      attr_accessor :amount

      # Reward token contract address.
      sig { returns(String) }
      attr_accessor :token_address

      # Reward token symbol (e.g., "MORPHO").
      sig { returns(String) }
      attr_accessor :token_symbol

      # A single reward token claimed from vault participation.
      sig do
        params(
          amount: String,
          token_address: String,
          token_symbol: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount claimed in the smallest unit.
        amount:,
        # Reward token contract address.
        token_address:,
        # Reward token symbol (e.g., "MORPHO").
        token_symbol:
      )
      end

      sig do
        override.returns(
          { amount: String, token_address: String, token_symbol: String }
        )
      end
      def to_hash
      end
    end
  end
end
