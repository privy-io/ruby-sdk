# typed: strong

module Privy
  module Models
    class AccountBalanceParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AccountBalanceParams, Privy::Internal::AnyHash)
        end

      # When set to true, returns balances from testnet chains instead of mainnets.
      sig do
        returns(T.nilable(Privy::AccountBalanceParams::TestnetMode::OrSymbol))
      end
      attr_reader :testnet_mode

      sig do
        params(
          testnet_mode: Privy::AccountBalanceParams::TestnetMode::OrSymbol
        ).void
      end
      attr_writer :testnet_mode

      # Query parameters for the account balance endpoint.
      sig do
        params(
          testnet_mode: Privy::AccountBalanceParams::TestnetMode::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # When set to true, returns balances from testnet chains instead of mainnets.
        testnet_mode: nil
      )
      end

      sig do
        override.returns(
          { testnet_mode: Privy::AccountBalanceParams::TestnetMode::OrSymbol }
        )
      end
      def to_hash
      end

      # When set to true, returns balances from testnet chains instead of mainnets.
      module TestnetMode
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AccountBalanceParams::TestnetMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(:true, Privy::AccountBalanceParams::TestnetMode::TaggedSymbol)
        FALSE =
          T.let(:false, Privy::AccountBalanceParams::TestnetMode::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AccountBalanceParams::TestnetMode::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
