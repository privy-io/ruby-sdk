# frozen_string_literal: true

module Privy
  module Models
    class DepositAccountCryptoQuoteRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   An asset and chain for an indicative crypto deposit-account quote.
      #
      #   @return [Privy::Models::DepositAccountCryptoQuoteAsset]
      required :destination, -> { Privy::DepositAccountCryptoQuoteAsset }

      # @!attribute source
      #   An asset and chain for an indicative crypto deposit-account quote.
      #
      #   @return [Privy::Models::DepositAccountCryptoQuoteAsset]
      required :source, -> { Privy::DepositAccountCryptoQuoteAsset }

      # @!attribute input_amount
      #   A positive decimal amount in the source token’s standard unit, not its smallest
      #   on-chain unit.
      #
      #   @return [String, nil]
      optional :input_amount, String

      # @!attribute slippage_bps
      #   Value in basis points: integer from 0 to 10000 (0% to 100%).
      #
      #   @return [Integer, nil]
      optional :slippage_bps, Integer

      # @!method initialize(destination:, source:, input_amount: nil, slippage_bps: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DepositAccountCryptoQuoteRequestBody} for more details.
      #
      #   Request body for an indicative crypto deposit-account route quote.
      #
      #   @param destination [Privy::Models::DepositAccountCryptoQuoteAsset] An asset and chain for an indicative crypto deposit-account quote.
      #
      #   @param source [Privy::Models::DepositAccountCryptoQuoteAsset] An asset and chain for an indicative crypto deposit-account quote.
      #
      #   @param input_amount [String] A positive decimal amount in the source token’s standard unit, not its smallest
      #
      #   @param slippage_bps [Integer] Value in basis points: integer from 0 to 10000 (0% to 100%).
    end
  end
end
