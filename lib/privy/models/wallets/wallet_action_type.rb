# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # Type of wallet action
      module WalletActionType
        extend Privy::Internal::Type::Union

        variant const: -> { Privy::Models::Wallets::WalletActionType::SWAP }

        variant const: -> { Privy::Models::Wallets::WalletActionType::TRANSFER }

        variant const: -> { Privy::Models::Wallets::WalletActionType::EARN_DEPOSIT }

        variant const: -> { Privy::Models::Wallets::WalletActionType::EARN_WITHDRAW }

        variant const: -> { Privy::Models::Wallets::WalletActionType::EARN_INCENTIVE_CLAIM }

        variant const: -> { Privy::Models::Wallets::WalletActionType::EARN_FEE_COLLECT }

        variant const: -> { Privy::Models::Wallets::WalletActionType::PAYOUT }

        variant const: -> { Privy::Models::Wallets::WalletActionType::TMMF_DEPOSIT }

        variant const: -> { Privy::Models::Wallets::WalletActionType::TMMF_WITHDRAW }

        variant String

        # @!method self.variants
        #   @return [Array(Symbol, String)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Privy::Wallets::WalletActionType::TaggedSymbol, String) }
        end

        # @!group

        SWAP = :swap
        TRANSFER = :transfer
        EARN_DEPOSIT = :earn_deposit
        EARN_WITHDRAW = :earn_withdraw
        EARN_INCENTIVE_CLAIM = :earn_incentive_claim
        EARN_FEE_COLLECT = :earn_fee_collect
        PAYOUT = :payout
        TMMF_DEPOSIT = :tmmf_deposit
        TMMF_WITHDRAW = :tmmf_withdraw

        # @!endgroup
      end
    end

    WalletActionType = Wallets::WalletActionType
  end
end
