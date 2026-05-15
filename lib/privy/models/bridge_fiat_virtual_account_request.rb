# frozen_string_literal: true

module Privy
  module Models
    class BridgeFiatVirtualAccountRequest < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #
      #   @return [Privy::Models::BridgeFiatVirtualAccountDestination]
      required :destination, -> { Privy::BridgeFiatVirtualAccountDestination }

      # @!attribute provider
      #
      #   @return [Symbol, Privy::Models::BridgeFiatVirtualAccountRequest::Provider]
      required :provider, enum: -> { Privy::BridgeFiatVirtualAccountRequest::Provider }

      # @!attribute source
      #
      #   @return [Privy::Models::BridgeFiatVirtualAccountSource]
      required :source, -> { Privy::BridgeFiatVirtualAccountSource }

      # @!method initialize(destination:, provider:, source:)
      #   The request input for creating virtual account.
      #
      #   @param destination [Privy::Models::BridgeFiatVirtualAccountDestination]
      #   @param provider [Symbol, Privy::Models::BridgeFiatVirtualAccountRequest::Provider]
      #   @param source [Privy::Models::BridgeFiatVirtualAccountSource]

      # @see Privy::Models::BridgeFiatVirtualAccountRequest#provider
      module Provider
        extend Privy::Internal::Type::Enum

        BRIDGE = :bridge

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
