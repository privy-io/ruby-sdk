# frozen_string_literal: true

module Privy
  module Models
    class DepositAccountCryptoQuoteResponse < Privy::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute estimated_output_amount
      #   Estimated output amount as a decimal string in the destination token's standard
      #   unit. Not in the smallest on-chain unit.
      #
      #   @return [String]
      required :estimated_output_amount, String

      # @!attribute input_amount
      #   Quoted input amount as a decimal string in the source token's standard unit
      #   (e.g. "0.02" for 0.02 ETH). Not in the smallest on-chain unit.
      #
      #   @return [String]
      required :input_amount, String

      # @!method initialize(created_at:, estimated_output_amount:, input_amount:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DepositAccountCryptoQuoteResponse} for more details.
      #
      #   An indicative crypto deposit-account quote. Amounts are in token standard units.
      #
      #   @param created_at [Time]
      #
      #   @param estimated_output_amount [String] Estimated output amount as a decimal string in the destination token's standard
      #
      #   @param input_amount [String] Quoted input amount as a decimal string in the source token's standard unit (e.g
    end
  end
end
