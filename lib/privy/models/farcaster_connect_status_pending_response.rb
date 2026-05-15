# frozen_string_literal: true

module Privy
  module Models
    class FarcasterConnectStatusPendingResponse < Privy::Internal::Type::BaseModel
      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute state
      #
      #   @return [Symbol, Privy::Models::FarcasterConnectStatusPendingResponse::State]
      required :state, enum: -> { Privy::FarcasterConnectStatusPendingResponse::State }

      # @!method initialize(nonce:, state:)
      #   Proxy for the Farcaster Connect pending status response as defined in FIP-11.
      #
      #   @param nonce [String]
      #   @param state [Symbol, Privy::Models::FarcasterConnectStatusPendingResponse::State]

      # @see Privy::Models::FarcasterConnectStatusPendingResponse#state
      module State
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
