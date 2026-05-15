# frozen_string_literal: true

module Privy
  module Models
    class UpdateAccountFromWalletIDsInput < Privy::Internal::Type::BaseModel
      # @!attribute wallet_ids
      #   IDs for wallets to include in this account.
      #
      #   @return [Array<String>]
      required :wallet_ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute display_name
      #   An optional display name for the account.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!method initialize(wallet_ids:, display_name: nil)
      #   Input for updating a digital asset account by adding existing wallets with a
      #   `wallet_ids` parameter.
      #
      #   @param wallet_ids [Array<String>] IDs for wallets to include in this account.
      #
      #   @param display_name [String] An optional display name for the account.
    end
  end
end
