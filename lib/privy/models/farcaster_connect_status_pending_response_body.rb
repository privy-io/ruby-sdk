# frozen_string_literal: true

module Privy
  module Models
    class FarcasterConnectStatusPendingResponseBody < Privy::Internal::Type::BaseModel
      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

      # @!attribute state
      #
      #   @return [Symbol, Privy::Models::FarcasterConnectStatusPendingResponseBody::State]
      required :state, enum: -> { Privy::FarcasterConnectStatusPendingResponseBody::State }

      # @!method initialize(nonce:, state:)
      #   The response body for pending a Farcaster connection.
      #
      #   @param nonce [String]
      #   @param state [Symbol, Privy::Models::FarcasterConnectStatusPendingResponseBody::State]

      # @see Privy::Models::FarcasterConnectStatusPendingResponseBody#state
      module State
        extend Privy::Internal::Type::Enum

        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
