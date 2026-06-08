# frozen_string_literal: true

module Privy
  module Models
    class TransferQuoteResponse < Privy::Internal::Type::BaseModel
      # @!attribute destination
      #   The destination address for a token transfer. Optionally specify a different
      #   asset or chain for cross-asset or cross-chain transfers.
      #
      #   @return [Privy::Models::TokenTransferDestination]
      required :destination, -> { Privy::TokenTransferDestination }

      # @!attribute estimated_fees
      #   Estimated fees in USD
      #
      #   @return [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>]
      required :estimated_fees, -> { Privy::Internal::Type::ArrayOf[union: Privy::FeeLineItem] }

      # @!attribute estimated_output_amount
      #   Estimated output amount in decimals
      #
      #   @return [String]
      required :estimated_output_amount, String

      # @!attribute expires_at
      #   Quote expiry as unix timestamp (seconds)
      #
      #   @return [Float]
      required :expires_at, Float

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

      # @!attribute estimated_gas
      #   Gas cost for a blockchain action. Includes both raw base-unit amount and a
      #   human-readable decimal string, plus the gas token symbol.
      #
      #   @return [Privy::Models::Gas, nil]
      optional :estimated_gas, -> { Privy::Gas }

      # @!method initialize(destination:, estimated_fees:, estimated_output_amount:, expires_at:, source:, amount_type: nil, estimated_gas: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferQuoteResponse} for more details.
      #
      #   Response containing a quote for a cross-asset or cross-chain (DADC) transfer.
      #
      #   @param destination [Privy::Models::TokenTransferDestination] The destination address for a token transfer. Optionally specify a different ass
      #
      #   @param estimated_fees [Array<Privy::Models::RelayerFee, Privy::Models::PrivyFee, Privy::Models::DeveloperFee>] Estimated fees in USD
      #
      #   @param estimated_output_amount [String] Estimated output amount in decimals
      #
      #   @param expires_at [Float] Quote expiry as unix timestamp (seconds)
      #
      #   @param source [Privy::Models::NamedTokenTransferSource, Privy::Models::CustomTokenTransferSource] The source asset, amount, and chain for a token transfer. Specify either `asset`
      #
      #   @param amount_type [Symbol, Privy::Models::AmountType] Whether the amount refers to the input token or output token.
      #
      #   @param estimated_gas [Privy::Models::Gas] Gas cost for a blockchain action. Includes both raw base-unit amount and a human
    end
  end
end
