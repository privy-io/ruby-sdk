# frozen_string_literal: true

module Privy
  module Models
    # Funds a card can spend, where `selected`, not list position, marks the one it
    # spends.
    module CardIssuingFundingSource
      extend Privy::Internal::Type::Union

      discriminator :type

      # The funding wallet's `asset` balance.
      variant :wallet, -> { Privy::CardIssuingWalletFundingSource }

      # The funding wallet's shares in an ERC-4626 Earn vault, which the card spends instead of its `asset` balance.
      variant :erc4626_vault, -> { Privy::CardIssuingErc4626VaultFundingSource }

      # The funding wallet's shares in a Tempo Earn vault, which a card that also lists its wallet can switch to and back from.
      variant :tempo_earn_vault, -> { Privy::CardIssuingTempoEarnVaultFundingSource }

      # @!method self.variants
      #   @return [Array(Privy::Models::CardIssuingWalletFundingSource, Privy::Models::CardIssuingErc4626VaultFundingSource, Privy::Models::CardIssuingTempoEarnVaultFundingSource)]
    end
  end
end
