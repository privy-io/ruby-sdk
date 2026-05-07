# frozen_string_literal: true

module Privy
  module Models
    # The deposit instructions for a virtual account.
    module BridgeFiatVirtualAccountDepositInstructions
      extend Privy::Internal::Type::Union

      discriminator :asset

      # The deposit instructions for a virtual account.
      variant :usd, -> { Privy::BridgeUsdFiatVirtualAccountDepositInstructions }

      # The deposit instructions for a virtual account.
      variant :eur, -> { Privy::BridgeEurFiatVirtualAccountDepositInstructions }

      # The deposit instructions for a virtual account.
      variant :mxn, -> { Privy::BridgeMxnFiatVirtualAccountDepositInstructions }

      # The deposit instructions for a virtual account.
      variant :brl, -> { Privy::BridgeBrlFiatVirtualAccountDepositInstructions }

      # The deposit instructions for a virtual account.
      variant :gbp, -> { Privy::BridgeGbpFiatVirtualAccountDepositInstructions }

      # @!method self.variants
      #   @return [Array(Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions)]
    end
  end
end
