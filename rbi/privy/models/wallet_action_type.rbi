# typed: strong

module Privy
  module Models
    # Type of wallet action
    module WalletActionType
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::WalletActionType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SWAP = T.let(:swap, Privy::WalletActionType::TaggedSymbol)
      TRANSFER = T.let(:transfer, Privy::WalletActionType::TaggedSymbol)
      EARN_DEPOSIT = T.let(:earn_deposit, Privy::WalletActionType::TaggedSymbol)
      EARN_WITHDRAW =
        T.let(:earn_withdraw, Privy::WalletActionType::TaggedSymbol)
      EARN_INCENTIVE_CLAIM =
        T.let(:earn_incentive_claim, Privy::WalletActionType::TaggedSymbol)

      sig { override.returns(T::Array[Privy::WalletActionType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
