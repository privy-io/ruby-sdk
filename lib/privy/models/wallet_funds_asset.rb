# frozen_string_literal: true

module Privy
  module Models
    # An asset involved in a wallet transfer.
    module WalletFundsAsset
      extend Privy::Internal::Type::Union

      discriminator :type

      # A native token asset (e.g. ETH, SOL).
      variant :"native-token", -> { Privy::WalletFundsNativeTokenAsset }

      # An ERC-20 token asset.
      variant :erc20, -> { Privy::WalletFundsErc20Asset }

      # A Solana SPL token asset.
      variant :spl, -> { Privy::WalletFundsSplAsset }

      # A Stellar Asset Contract (SAC) asset.
      variant :sac, -> { Privy::WalletFundsSacAsset }

      # @!method self.variants
      #   @return [Array(Privy::Models::WalletFundsNativeTokenAsset, Privy::Models::WalletFundsErc20Asset, Privy::Models::WalletFundsSplAsset, Privy::Models::WalletFundsSacAsset)]
    end
  end
end
