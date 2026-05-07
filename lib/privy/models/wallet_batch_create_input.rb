# frozen_string_literal: true

module Privy
  module Models
    class WalletBatchCreateInput < Privy::Internal::Type::BaseModel
      # @!attribute wallets
      #   Array of wallet creation requests. Minimum 1, maximum 100.
      #
      #   @return [Array<Privy::Models::WalletBatchItemInput>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::WalletBatchItemInput] }

      # @!method initialize(wallets:)
      #   Request body for batch wallet creation.
      #
      #   @param wallets [Array<Privy::Models::WalletBatchItemInput>] Array of wallet creation requests. Minimum 1, maximum 100.
    end
  end
end
