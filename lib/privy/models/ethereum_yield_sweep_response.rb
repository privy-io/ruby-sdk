# frozen_string_literal: true

module Privy
  module Models
    class EthereumYieldSweepResponse < Privy::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the yield sweep.
      #
      #   @return [String]
      required :id, String

      # @!attribute asset_amount
      #   The amount of underlying assets involved. Set after the sweep is confirmed
      #   on-chain.
      #
      #   @return [String, nil]
      required :asset_amount, String, nil?: true

      # @!attribute created_at
      #   Unix timestamp of when the sweep was created, in milliseconds.
      #
      #   @return [Float]
      required :created_at, Float

      # @!attribute share_amount
      #   The amount of vault shares involved. Set after the sweep is confirmed on-chain.
      #
      #   @return [String, nil]
      required :share_amount, String, nil?: true

      # @!attribute status
      #   Status of a yield sweep.
      #
      #   @return [Symbol, Privy::Models::EthereumYieldSweepStatus]
      required :status, enum: -> { Privy::EthereumYieldSweepStatus }

      # @!attribute type
      #   Type of yield sweep.
      #
      #   @return [Symbol, Privy::Models::EthereumYieldSweepType]
      required :type, enum: -> { Privy::EthereumYieldSweepType }

      # @!attribute updated_at
      #   Unix timestamp of when the sweep was last updated, in milliseconds.
      #
      #   @return [Float]
      required :updated_at, Float

      # @!attribute vault_id
      #   The ID of the vault involved in the sweep.
      #
      #   @return [String]
      required :vault_id, String

      # @!attribute wallet_id
      #   The ID of the wallet involved in the sweep.
      #
      #   @return [String]
      required :wallet_id, String

      # @!method initialize(id:, asset_amount:, created_at:, share_amount:, status:, type:, updated_at:, vault_id:, wallet_id:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::EthereumYieldSweepResponse} for more details.
      #
      #   A yield sweep record representing a deposit or withdrawal.
      #
      #   @param id [String] Unique identifier for the yield sweep.
      #
      #   @param asset_amount [String, nil] The amount of underlying assets involved. Set after the sweep is confirmed on-ch
      #
      #   @param created_at [Float] Unix timestamp of when the sweep was created, in milliseconds.
      #
      #   @param share_amount [String, nil] The amount of vault shares involved. Set after the sweep is confirmed on-chain.
      #
      #   @param status [Symbol, Privy::Models::EthereumYieldSweepStatus] Status of a yield sweep.
      #
      #   @param type [Symbol, Privy::Models::EthereumYieldSweepType] Type of yield sweep.
      #
      #   @param updated_at [Float] Unix timestamp of when the sweep was last updated, in milliseconds.
      #
      #   @param vault_id [String] The ID of the vault involved in the sweep.
      #
      #   @param wallet_id [String] The ID of the wallet involved in the sweep.
    end
  end
end
