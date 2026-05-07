# frozen_string_literal: true

module Privy
  module Models
    class AssetAccountWithBalance < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The account ID.
      #
      #   @return [String]
      required :id, String

      # @!attribute balance
      #   Balances for an asset account or wallet
      #
      #   @return [Privy::Models::BalanceResponse]
      required :balance, -> { Privy::BalanceResponse }

      # @!attribute display_name
      #   An optional display name for the account.
      #
      #   @return [String, nil]
      required :display_name, String, nil?: true

      # @!attribute wallets
      #   The wallets belonging to this account.
      #
      #   @return [Array<Privy::Models::AccountWallet>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::AccountWallet] }

      # @!method initialize(id:, balance:, display_name:, wallets:)
      #   A digital asset account with its aggregated balance across all wallets and
      #   chains.
      #
      #   @param id [String] The account ID.
      #
      #   @param balance [Privy::Models::BalanceResponse] Balances for an asset account or wallet
      #
      #   @param display_name [String, nil] An optional display name for the account.
      #
      #   @param wallets [Array<Privy::Models::AccountWallet>] The wallets belonging to this account.
    end
  end
end
