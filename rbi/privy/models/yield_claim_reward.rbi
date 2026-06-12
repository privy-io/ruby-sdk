# typed: strong

module Privy
  module Models
    class YieldClaimReward < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::YieldClaimReward, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :amount

      sig { returns(String) }
      attr_accessor :token_address

      sig { returns(String) }
      attr_accessor :token_symbol

      # A single reward token claimed from a yield vault.
      sig do
        params(
          amount: String,
          token_address: String,
          token_symbol: String
        ).returns(T.attached_class)
      end
      def self.new(amount:, token_address:, token_symbol:)
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
