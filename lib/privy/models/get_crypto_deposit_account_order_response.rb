# frozen_string_literal: true

module Privy
  module Models
    class GetCryptoDepositAccountOrderResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Wallet action ID of the deposit sweep.
      #
      #   @return [String]
      required :id, String

      # @!attribute status
      #   Status of a wallet action.
      #
      #   @return [Symbol, Privy::Models::Wallets::WalletActionStatus]
      required :status, enum: -> { Privy::Wallets::WalletActionStatus }

      # @!method initialize(id:, status:)
      #   A crypto deposit-account sweep identified by its wallet action ID. Status is the
      #   wallet-action status.
      #
      #   @param id [String] Wallet action ID of the deposit sweep.
      #
      #   @param status [Symbol, Privy::Models::Wallets::WalletActionStatus] Status of a wallet action.
    end
  end
end
