# frozen_string_literal: true

module Privy
  module Models
    module LinkedAccountEmbeddedWallet
      extend Privy::Internal::Type::Union

      # An Ethereum embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountEthereumEmbeddedWallet }

      # A Solana embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountSolanaEmbeddedWallet }

      # A Bitcoin SegWit embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountBitcoinSegwitEmbeddedWallet }

      # A Bitcoin Taproot embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountBitcoinTaprootEmbeddedWallet }

      # A curve signing embedded wallet account linked to the user.
      variant -> { Privy::LinkedAccountCurveSigningEmbeddedWallet }

      # @!method self.variants
      #   @return [Array(Privy::Models::LinkedAccountEthereumEmbeddedWallet, Privy::Models::LinkedAccountSolanaEmbeddedWallet, Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet, Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet, Privy::Models::LinkedAccountCurveSigningEmbeddedWallet)]
    end
  end
end
