# frozen_string_literal: true

module Privy
  module Models
    class SwapQuoteResponse < Privy::Internal::Type::BaseModel
      # @!attribute caip2
      #   Chain identifier.
      #
      #   @return [String]
      required :caip2, String

      # @!attribute est_output_amount
      #   Estimated amount of output token in base units.
      #
      #   @return [String]
      required :est_output_amount, String

      # @!attribute gas_estimate
      #   Estimated gas cost in base units of the native token. @deprecated For
      #   cross-chain swaps, use estimated_gas instead.
      #
      #   @return [String]
      required :gas_estimate, String

      # @!attribute input_amount
      #   Amount of input token in base units.
      #
      #   @return [String]
      required :input_amount, String

      # @!attribute input_token
      #   Token address being sold.
      #
      #   @return [String]
      required :input_token, String

      # @!attribute minimum_output_amount
      #   Minimum output amount accounting for slippage, in base units.
      #
      #   @return [String]
      required :minimum_output_amount, String

      # @!attribute output_token
      #   Token address being bought.
      #
      #   @return [String]
      required :output_token, String

      # @!attribute destination_caip2
      #   Destination chain CAIP-2 identifier for cross-chain swaps. Only present for
      #   cross-chain swaps.
      #
      #   @return [String, nil]
      optional :destination_caip2, String

      # @!attribute estimated_fees
      #   Estimated fees for the swap. Only present for cross-chain swaps.
      #
      #   @return [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>, nil]
      optional :estimated_fees, -> { Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem] }

      # @!attribute estimated_gas
      #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
      #   human-readable decimal string, plus the gas token symbol.
      #
      #   @return [Privy::Models::Gas, nil]
      optional :estimated_gas, -> { Privy::Gas }

      # @!attribute expires_at
      #   Quote expiry as Unix timestamp (seconds). Only present for cross-chain quotes.
      #
      #   @return [Float, nil]
      optional :expires_at, Float

      # @!method initialize(caip2:, est_output_amount:, gas_estimate:, input_amount:, input_token:, minimum_output_amount:, output_token:, destination_caip2: nil, estimated_fees: nil, estimated_gas: nil, expires_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::SwapQuoteResponse} for more details.
      #
      #   Pricing data for a token swap.
      #
      #   @param caip2 [String] Chain identifier.
      #
      #   @param est_output_amount [String] Estimated amount of output token in base units.
      #
      #   @param gas_estimate [String] Estimated gas cost in base units of the native token. @deprecated For cross-chai
      #
      #   @param input_amount [String] Amount of input token in base units.
      #
      #   @param input_token [String] Token address being sold.
      #
      #   @param minimum_output_amount [String] Minimum output amount accounting for slippage, in base units.
      #
      #   @param output_token [String] Token address being bought.
      #
      #   @param destination_caip2 [String] Destination chain CAIP-2 identifier for cross-chain swaps. Only present for cros
      #
      #   @param estimated_fees [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>] Estimated fees for the swap. Only present for cross-chain swaps.
      #
      #   @param estimated_gas [Privy::Models::Gas] Gas cost for a blockchain action. Includes both raw base-unit amount and a human
      #
      #   @param expires_at [Float] Quote expiry as Unix timestamp (seconds). Only present for cross-chain quotes.
    end
  end
end
