# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class TempoZoneSettlementWalletActionStep < Privy::Internal::Type::BaseModel
        # @!attribute caip2
        #   CAIP-2 identifier of the Tempo parent chain, or null when unavailable.
        #
        #   @return [String, nil]
        required :caip2, String, nil?: true

        # @!attribute status
        #   Status of an external transaction step in a wallet action.
        #
        #   @return [Symbol, Privy::Models::Wallets::ExternalTransactionWalletActionStepStatus]
        required :status, enum: -> { Privy::Wallets::ExternalTransactionWalletActionStepStatus }

        # @!attribute transaction_hash
        #   A hex-encoded string prefixed with '0x', capped at 300002 characters (150,000
        #   bytes).
        #
        #   @return [String, nil]
        required :transaction_hash, String, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep::Type]
        required :type, enum: -> { Privy::Wallets::TempoZoneSettlementWalletActionStep::Type }

        # @!attribute failure_reason
        #   A description of why a wallet action (or a step within a wallet action) failed.
        #
        #   @return [Privy::Models::Wallets::FailureReason, nil]
        optional :failure_reason, -> { Privy::Wallets::FailureReason }

        # @!method initialize(caip2:, status:, transaction_hash:, type:, failure_reason: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::TempoZoneSettlementWalletActionStep} for more details.
        #
        #   A wallet action step representing a Tempo Zone settlement on its parent chain.
        #
        #   @param caip2 [String, nil] CAIP-2 identifier of the Tempo parent chain, or null when unavailable.
        #
        #   @param status [Symbol, Privy::Models::Wallets::ExternalTransactionWalletActionStepStatus] Status of an external transaction step in a wallet action.
        #
        #   @param transaction_hash [String, nil] A hex-encoded string prefixed with '0x', capped at 300002 characters (150,000 by
        #
        #   @param type [Symbol, Privy::Models::Wallets::TempoZoneSettlementWalletActionStep::Type]
        #
        #   @param failure_reason [Privy::Models::Wallets::FailureReason] A description of why a wallet action (or a step within a wallet action) failed.

        # @see Privy::Models::Wallets::TempoZoneSettlementWalletActionStep#type
        module Type
          extend Privy::Internal::Type::Enum

          TEMPO_ZONE_SETTLEMENT = :tempo_zone_settlement

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
