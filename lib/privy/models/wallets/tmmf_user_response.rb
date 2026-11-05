# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TmmfUserResponse < Privy::Internal::Type::BaseModel
        # @!attribute user_id
        #   ID of the Privy user, which can be an organization.
        #
        #   @return [String]
        required :user_id, String

        # @!attribute user_registrations
        #   The user's registrations with tMMF providers.
        #
        #   @return [Array<Privy::Models::Wallets::TmmfUserRegistration>]
        required :user_registrations, -> { Privy::Internal::Type::ArrayOf[Privy::Wallets::TmmfUserRegistration] }

        # @!attribute wallet_registrations
        #   A page of wallets registered for the user with tMMF providers.
        #
        #   @return [Array<Privy::Models::Wallets::TmmfUserWalletResponse>]
        required :wallet_registrations,
                 -> { Privy::Internal::Type::ArrayOf[Privy::Wallets::TmmfUserWalletResponse] }

        # @!attribute wallets_next_cursor
        #   Cursor of the next page of wallet registrations, or null on the last page.
        #
        #   @return [String, nil]
        required :wallets_next_cursor, String, nil?: true

        # @!method initialize(user_id:, user_registrations:, wallet_registrations:, wallets_next_cursor:)
        #   A user's registration with each tMMF provider, and the wallets registered for
        #   each.
        #
        #   @param user_id [String] ID of the Privy user, which can be an organization.
        #
        #   @param user_registrations [Array<Privy::Models::Wallets::TmmfUserRegistration>] The user's registrations with tMMF providers.
        #
        #   @param wallet_registrations [Array<Privy::Models::Wallets::TmmfUserWalletResponse>] A page of wallets registered for the user with tMMF providers.
        #
        #   @param wallets_next_cursor [String, nil] Cursor of the next page of wallet registrations, or null on the last page.
      end
    end
  end
end
