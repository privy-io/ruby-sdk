# typed: strong

module Privy
  module Models
    class AccountBalanceParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AccountBalanceParams, Privy::Internal::AnyHash)
        end

      # When set to true, returns balances from testnet chains instead of mainnets.
      sig { returns(T.nilable(Privy::ChainTestnetMode::OrSymbol)) }
      attr_reader :testnet_mode

      sig { params(testnet_mode: Privy::ChainTestnetMode::OrSymbol).void }
      attr_writer :testnet_mode

      # Query parameters for the account balance endpoint.
      sig do
        params(testnet_mode: Privy::ChainTestnetMode::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # When set to true, returns balances from testnet chains instead of mainnets.
        testnet_mode: nil
      )
      end

      sig do
        override.returns({ testnet_mode: Privy::ChainTestnetMode::OrSymbol })
      end
      def to_hash
      end
    end
  end
end
