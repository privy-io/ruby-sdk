# frozen_string_literal: true

module Privy
  module Models
    class BridgeSandboxFiatVirtualAccountResponse < Privy::Internal::Type::BaseModel
      # @!attribute deposit_instructions
      #   The deposit instructions for a virtual account.
      #
      #   @return [Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions]
      required :deposit_instructions, union: -> { Privy::BridgeFiatVirtualAccountDepositInstructions }

      # @!attribute destination
      #   The destination chain, asset, and address for a virtual account transfer.
      #
      #   @return [Privy::Models::BridgeFiatVirtualAccountDestination]
      required :destination, -> { Privy::BridgeFiatVirtualAccountDestination }

      # @!attribute provider
      #
      #   @return [Symbol, Privy::Models::BridgeSandboxFiatVirtualAccountResponse::Provider]
      required :provider, enum: -> { Privy::BridgeSandboxFiatVirtualAccountResponse::Provider }

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!method initialize(deposit_instructions:, destination:, provider:, status:)
      #   The response for creating virtual account.
      #
      #   @param deposit_instructions [Privy::Models::BridgeUsdFiatVirtualAccountDepositInstructions, Privy::Models::BridgeEurFiatVirtualAccountDepositInstructions, Privy::Models::BridgeMxnFiatVirtualAccountDepositInstructions, Privy::Models::BridgeBrlFiatVirtualAccountDepositInstructions, Privy::Models::BridgeGbpFiatVirtualAccountDepositInstructions] The deposit instructions for a virtual account.
      #
      #   @param destination [Privy::Models::BridgeFiatVirtualAccountDestination] The destination chain, asset, and address for a virtual account transfer.
      #
      #   @param provider [Symbol, Privy::Models::BridgeSandboxFiatVirtualAccountResponse::Provider]
      #
      #   @param status [String]

      # @see Privy::Models::BridgeSandboxFiatVirtualAccountResponse#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE_SANDBOX = :"bridge-sandbox"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
