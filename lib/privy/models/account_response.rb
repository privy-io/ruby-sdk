# frozen_string_literal: true

module Privy
  module Models
    class AccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   The account ID.
      #
      #   @return [String]
      required :id, String

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

      # @!method initialize(id:, display_name:, wallets:)
      #   A digital asset account that groups wallets under a single entity.
      #
      #   @param id [String] The account ID.
      #
      #   @param display_name [String, nil] An optional display name for the account.
      #
      #   @param wallets [Array<Privy::Models::AccountWallet>] The wallets belonging to this account.
    end
  end
end
