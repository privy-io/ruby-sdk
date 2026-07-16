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
      #   An EVM CAIP-2 chain identifier (e.g., "eip155:4217" for Tempo, "eip155:8453" for
      #   Base).
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
      #   Status of a blockchain transaction submitted by Privy.
      #
      #   @return [Symbol, Privy::Models::BlockchainTransactionStatus]
      required :status, enum: -> { Privy::BlockchainTransactionStatus }

      # @!attribute updated_at
      #   Unix timestamp of when the claim was last updated, in milliseconds.
      #
      #   @return [Float]
      required :updated_at, Float

      # @!method initialize(id:, caip2:, created_at:, rewards:, status:, updated_at:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumYieldClaimResponse} for more details.
      #
      #   Response from a yield reward claim operation.
      #
      #   @param id [String] Privy transaction record ID for the claim operation.
      #
      #   @param caip2 [String] An EVM CAIP-2 chain identifier (e.g., "eip155:4217" for Tempo, "eip155:8453" for
      #
      #   @param created_at [Float] Unix timestamp of when the claim was created, in milliseconds.
      #
      #   @param rewards [Array<Privy::Models::EthereumYieldClaimReward>] List of reward tokens claimed.
      #
      #   @param status [Symbol, Privy::Models::BlockchainTransactionStatus] Status of a blockchain transaction submitted by Privy.
      #
      #   @param updated_at [Float] Unix timestamp of when the claim was last updated, in milliseconds.
    end
  end
end
