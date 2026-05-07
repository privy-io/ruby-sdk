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
      #   Estimated gas cost in base units of the native token.
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

      # @!method initialize(caip2:, est_output_amount:, gas_estimate:, input_amount:, input_token:, minimum_output_amount:, output_token:)
      #   Pricing data for a token swap.
      #
      #   @param caip2 [String] Chain identifier.
      #
      #   @param est_output_amount [String] Estimated amount of output token in base units.
      #
      #   @param gas_estimate [String] Estimated gas cost in base units of the native token.
      #
      #   @param input_amount [String] Amount of input token in base units.
      #
      #   @param input_token [String] Token address being sold.
      #
      #   @param minimum_output_amount [String] Minimum output amount accounting for slippage, in base units.
      #
      #   @param output_token [String] Token address being bought.
    end
  end
end
