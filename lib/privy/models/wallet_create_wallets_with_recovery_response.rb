# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#create_wallets_with_recovery
    class WalletCreateWalletsWithRecoveryResponse < Privy::Internal::Type::BaseModel
      # @!attribute recovery_user_id
      #   The ID of the created user.
      #
      #   @return [String]
      required :recovery_user_id, String

      # @!attribute wallets
      #   The wallets that were created.
      #
      #   @return [Array<Privy::Models::Wallet>]
      required :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::Wallet] }

      # @!method initialize(recovery_user_id:, wallets:)
      #   The response from creating wallets with an associated recovery user.
      #
      #   @param recovery_user_id [String] The ID of the created user.
      #
      #   @param wallets [Array<Privy::Models::Wallet>] The wallets that were created.
    end
  end
end
