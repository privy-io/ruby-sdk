# frozen_string_literal: true

module Privy
  module Models
    class TransactionExecutionRevertedWebhookPayload < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   The CAIP-2 chain identifier (e.g., eip155:1 for Ethereum mainnet).
      #
      #   @return [String]
      required :caip2, String

      # @!attribute transaction_hash
      #   The blockchain transaction hash.
      #
      #   @return [String]
      required :transaction_hash, String

      # @!attribute transaction_id
      #   The Privy-assigned ID for this transaction.
      #
      #   @return [String]
      required :transaction_id, String

      # @!attribute type
      #   The type of webhook event.
      #
      #   @return [Symbol, Privy::Models::TransactionExecutionRevertedWebhookPayload::Type]
      required :type, enum: -> { Privy::TransactionExecutionRevertedWebhookPayload::Type }

      # @!attribute wallet_id
      #   The ID of the wallet that initiated the transaction.
      #
      #   @return [String]
      required :wallet_id, String

      # @!attribute reference_id
      #   Developer-provided reference ID for transaction reconciliation, if one was
      #   provided.
      #
      #   @return [String, nil]
      optional :reference_id, String, nil?: true

      # @!method initialize(caip2:, transaction_hash:, transaction_id:, type:, wallet_id:, reference_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransactionExecutionRevertedWebhookPayload} for more details.
      #
      #   Payload for the transaction.execution_reverted webhook event.
      #
      #   @param caip2 [String] The CAIP-2 chain identifier (e.g., eip155:1 for Ethereum mainnet).
      #
      #   @param transaction_hash [String] The blockchain transaction hash.
      #
      #   @param transaction_id [String] The Privy-assigned ID for this transaction.
      #
      #   @param type [Symbol, Privy::Models::TransactionExecutionRevertedWebhookPayload::Type] The type of webhook event.
      #
      #   @param wallet_id [String] The ID of the wallet that initiated the transaction.
      #
      #   @param reference_id [String, nil] Developer-provided reference ID for transaction reconciliation, if one was provi

      # The type of webhook event.
      #
      # @see Privy::Models::TransactionExecutionRevertedWebhookPayload#type
      module Type
        extend Privy::Internal::Type::Enum

        TRANSACTION_EXECUTION_REVERTED = :"transaction.execution_reverted"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
