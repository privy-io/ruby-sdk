# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldClaimResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Privy transaction record ID for the claim operation.
      #
      #   @return [String]
      required :id, String

      # @!attribute caip2
      #   An EVM CAIP-2 chain identifier (e.g., "eip155:8453" for Base).
      #
      #   @return [String]
      required :caip2, String

      # @!attribute created_at
      #   Unix timestamp of when the claim was created, in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute rewards
      #   List of reward tokens claimed.
      #
      #   @return [Array<Privy::Models::EthereumYieldClaimReward>]
      required :rewards, -> { Privy::Internal::Type::ArrayOf[Privy::EthereumYieldClaimReward] }

      # @!attribute status
      #   The current status of the claim transaction.
      #
      #   @return [Symbol, Privy::Models::EthereumYieldClaimResponse::Status]
      required :status, enum: -> { Privy::EthereumYieldClaimResponse::Status }

      # @!attribute updated_at
      #   Unix timestamp of when the claim was last updated, in milliseconds.
      #
      #   @return [Float]
      required :updated_at, Float

      # @!method initialize(id:, caip2:, created_at:, rewards:, status:, updated_at:)
      #   Response from a yield reward claim operation.
      #
      #   @param id [String] Privy transaction record ID for the claim operation.
      #
      #   @param caip2 [String] An EVM CAIP-2 chain identifier (e.g., "eip155:8453" for Base).
      #
      #   @param created_at [Float] Unix timestamp of when the claim was created, in milliseconds.
      #
      #   @param rewards [Array<Privy::Models::EthereumYieldClaimReward>] List of reward tokens claimed.
      #
      #   @param status [Symbol, Privy::Models::EthereumYieldClaimResponse::Status] The current status of the claim transaction.
      #
      #   @param updated_at [Float] Unix timestamp of when the claim was last updated, in milliseconds.

      # The current status of the claim transaction.
      #
      # @see Privy::Models::EthereumYieldClaimResponse#status
      module Status
        extend Privy::Internal::Type::Enum

        BROADCASTED = :broadcasted
        CONFIRMED = :confirmed
        EXECUTION_REVERTED = :execution_reverted
        FAILED = :failed
        REPLACED = :replaced
        FINALIZED = :finalized
        PROVIDER_ERROR = :provider_error
        PENDING = :pending

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
