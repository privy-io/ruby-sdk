# typed: strong

module Privy
  module Models
    class SparkBalance < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SparkBalance, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :balance

      sig { returns(T::Hash[Symbol, Privy::SparkTokenBalance]) }
      attr_accessor :token_balances

      # The balance of a Spark wallet.
      sig do
        params(
          balance: String,
          token_balances: T::Hash[Symbol, Privy::SparkTokenBalance::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(balance:, token_balances:)
      end

      sig do
        override.returns(
          {
            balance: String,
            token_balances: T::Hash[Symbol, Privy::SparkTokenBalance]
          }
        )
      end
      def to_hash
      end
    end
  end
end
