# typed: strong

module Privy
  module Models
    WalletActionType = Wallets::WalletActionType

    module Wallets
      # Type of wallet action
      module WalletActionType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::WalletActionType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SWAP = T.let(:swap, Privy::Wallets::WalletActionType::TaggedSymbol)
        TRANSFER =
          T.let(:transfer, Privy::Wallets::WalletActionType::TaggedSymbol)
        EARN_DEPOSIT =
          T.let(:earn_deposit, Privy::Wallets::WalletActionType::TaggedSymbol)
        EARN_WITHDRAW =
          T.let(:earn_withdraw, Privy::Wallets::WalletActionType::TaggedSymbol)
        EARN_INCENTIVE_CLAIM =
          T.let(
            :earn_incentive_claim,
            Privy::Wallets::WalletActionType::TaggedSymbol
          )
        EARN_FEE_COLLECT =
          T.let(
            :earn_fee_collect,
            Privy::Wallets::WalletActionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::Wallets::WalletActionType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
