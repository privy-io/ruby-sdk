# frozen_string_literal: true

module Privy
  module Models
    class BridgeSandboxFiatVirtualAccountRequest < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   The destination chain, asset, and address for a virtual account transfer.
      #
      #   @return [Privy::Models::BridgeFiatVirtualAccountDestination]
      required :destination, -> { Privy::BridgeFiatVirtualAccountDestination }

      # @!attribute provider
      #
      #   @return [Symbol, Privy::Models::BridgeSandboxFiatVirtualAccountRequest::Provider]
      required :provider, enum: -> { Privy::BridgeSandboxFiatVirtualAccountRequest::Provider }

      # @!attribute source
      #   The source fiat currency configuration for a virtual account.
      #
      #   @return [Privy::Models::BridgeFiatVirtualAccountSource]
      required :source, -> { Privy::BridgeFiatVirtualAccountSource }

      # @!method initialize(destination:, provider:, source:)
      #   The request input for creating virtual account.
      #
      #   @param destination [Privy::Models::BridgeFiatVirtualAccountDestination] The destination chain, asset, and address for a virtual account transfer.
      #
      #   @param provider [Symbol, Privy::Models::BridgeSandboxFiatVirtualAccountRequest::Provider]
      #
      #   @param source [Privy::Models::BridgeFiatVirtualAccountSource] The source fiat currency configuration for a virtual account.

      # @see Privy::Models::BridgeSandboxFiatVirtualAccountRequest#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE_SANDBOX = :"bridge-sandbox"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
