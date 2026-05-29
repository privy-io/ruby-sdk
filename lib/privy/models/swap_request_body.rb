# frozen_string_literal: true

module Privy
  module Models
    class SwapRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute base_amount
      #   Amount in base units (e.g., wei for ETH). Must be a non-negative integer string.
      #
      #   @return [String]
      required :base_amount, String

      # @!attribute destination
      #   The output side of a swap execution request.
      #
      #   @return [Privy::Models::SwapDestination]
      required :destination, -> { Privy::SwapDestination }

      # @!attribute source
      #   The input side of a swap request, including token and chain.
      #
      #   @return [Privy::Models::SwapSource]
      required :source, -> { Privy::SwapSource }

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
      #   Maximum slippage tolerance in basis points (e.g., 50 for 0.5%).
      #
      #   @return [Float, nil]
      optional :slippage_bps, Float

      # @!method initialize(base_amount:, destination:, source:, amount_type: nil, fee_configuration: nil, slippage_bps: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SwapRequestBody} for more details.
      #
      #   Input for executing a token swap.
      #
      #   @param base_amount [String] Amount in base units (e.g., wei for ETH). Must be a non-negative integer string.
      #
      #   @param destination [Privy::Models::SwapDestination] The output side of a swap execution request.
      #
      #   @param source [Privy::Models::SwapSource] The input side of a swap request, including token and chain.
      #
      #   @param amount_type [Symbol, Privy::Models::AmountType] Whether the amount refers to the input token or output token.
      #
      #   @param fee_configuration [Privy::Models::FeeConfiguration] Total fees assessed on a transfer, in BPS
      #
      #   @param slippage_bps [Float] Maximum slippage tolerance in basis points (e.g., 50 for 0.5%).
    end
  end
end
