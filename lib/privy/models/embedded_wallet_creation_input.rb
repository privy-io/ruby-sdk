# frozen_string_literal: true

module Privy
  module Models
    class EmbeddedWalletCreationInput < Privy::Internal::Type::BaseModel
      # @!attribute wallets
      #   Wallets to create.
      #
      #   @return [Array<Privy::Models::WalletCreationInput>, nil]
      optional :wallets, -> { Privy::Internal::Type::ArrayOf[Privy::WalletCreationInput] }

      # @!method initialize(wallets: nil)
      #   The fields describing embedded wallet creation, used for user import and
      #   embedded wallet generation.
      #
      #   @param wallets [Array<Privy::Models::WalletCreationInput>] Wallets to create.
    end
  end
end
