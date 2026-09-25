# frozen_string_literal: true

module Privy
  module Models
    class RelayRefundDetails < Privy::Internal::Type::BaseModel
      # @!attribute original_transaction_hash
      #   The transaction hash of the transfer that was refunded.
      #
      #   @return [String]
      required :original_transaction_hash, String

      # @!attribute provider
      #   The provider that handled the refund.
      #
      #   @return [Symbol, Privy::Models::RelayRefundDetails::Provider]
      required :provider, enum: -> { Privy::RelayRefundDetails::Provider }

      # @!attribute wallet_action_id
      #   The Privy wallet action ID of the transfer that was refunded.
      #
      #   @return [String]
      required :wallet_action_id, String

      # @!method initialize(original_transaction_hash:, provider:, wallet_action_id:)
      #   Relay details for a refunded wallet deposit.
      #
      #   @param original_transaction_hash [String] The transaction hash of the transfer that was refunded.
      #
      #   @param provider [Symbol, Privy::Models::RelayRefundDetails::Provider] The provider that handled the refund.
      #
      #   @param wallet_action_id [String] The Privy wallet action ID of the transfer that was refunded.

      # The provider that handled the refund.
      #
      # @see Privy::Models::RelayRefundDetails#provider
      module Provider
        extend Privy::Internal::Type::Enum

        RELAY = :relay

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
