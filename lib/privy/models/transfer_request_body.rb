# frozen_string_literal: true

module Privy
  module Models
    class TransferRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   The destination address for a token transfer. Optionally specify a different
      #   asset or chain for cross-asset or cross-chain transfers.
      #
      #   @return [Privy::Models::TokenTransferDestination]
      required :destination, -> { Privy::TokenTransferDestination }

      # @!attribute source
      #   The source asset, amount, and chain for a token transfer. Specify either `asset`
      #   (named) or `asset_address` (custom), not both.
      #
      #   @return [Privy::Models::NamedTokenTransferSource, Privy::Models::CustomTokenTransferSource]
      required :source, union: -> { Privy::TokenTransferSource }

      # @!attribute amount_type
      #   Whether the amount refers to the input token or output token.
      #
      #   @return [Symbol, Privy::Models::AmountType, nil]
      optional :amount_type, enum: -> { Privy::AmountType }

      # @!attribute fee_configuration
      #   Total fees assessed on a transfer, in BPS
      #
      #   @return [Privy::Models::FeeConfiguration, nil]
      optional :fee_configuration, -> { Privy::FeeConfiguration }

      # @!attribute slippage_bps
      #   Maximum allowed slippage in basis points (1 bps = 0.01%). Only applicable for
      #   cross-chain or cross-asset transfers; omit to use the provider default.
      #
      #   @return [Integer, nil]
      optional :slippage_bps, Integer

      # @!method initialize(destination:, source:, amount_type: nil, fee_configuration: nil, slippage_bps: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferRequestBody} for more details.
      #
      #   Request body for initiating a sponsored token transfer from an embedded wallet.
      #
      #   @param destination [Privy::Models::TokenTransferDestination] The destination address for a token transfer. Optionally specify a different ass
      #
      #   @param source [Privy::Models::NamedTokenTransferSource, Privy::Models::CustomTokenTransferSource] The source asset, amount, and chain for a token transfer. Specify either `asset`
      #
      #   @param amount_type [Symbol, Privy::Models::AmountType] Whether the amount refers to the input token or output token.
      #
      #   @param fee_configuration [Privy::Models::FeeConfiguration] Total fees assessed on a transfer, in BPS
      #
      #   @param slippage_bps [Integer] Maximum allowed slippage in basis points (1 bps = 0.01%). Only applicable for cr
    end
  end
end
