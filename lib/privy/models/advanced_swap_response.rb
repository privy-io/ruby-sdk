# frozen_string_literal: true

module Privy
  module Models
    class AdvancedSwapResponse < Privy::Internal::Type::BaseModel
      # @!attribute in_amount
      #   Input amount consumed (smallest unit).
      #
      #   @return [String]
      required :in_amount, String

      # @!attribute input_token
      #   Input token address (base58).
      #
      #   @return [String]
      required :input_token, String

      # @!attribute min_out_amount
      #   Minimum output amount guaranteed by slippage tolerance (smallest unit).
      #
      #   @return [String]
      required :min_out_amount, String

      # @!attribute out_amount
      #   Expected output amount before slippage (smallest unit).
      #
      #   @return [String]
      required :out_amount, String

      # @!attribute output_token
      #   Output token address (base58).
      #
      #   @return [String]
      required :output_token, String

      # @!attribute provider
      #   Which aggregator fulfilled the swap (e.g. "dflow").
      #
      #   @return [String]
      required :provider, String

      # @!attribute signed_transaction
      #   Fully signed transaction (base64). Callers can re-submit to any Solana RPC for
      #   redundancy.
      #
      #   @return [String]
      required :signed_transaction, String

      # @!attribute slippage_bps
      #   Slippage applied in basis points. Reflects the resolved value if "auto" was
      #   requested.
      #
      #   @return [Integer]
      required :slippage_bps, Integer

      # @!attribute submission_status
      #   "accepted" if the network has acknowledged the transaction, "rejected" if the
      #   network refused it, "skipped" if dry_run was set. Not an onchain confirmation.
      #
      #   @return [Symbol, Privy::Models::AdvancedSwapResponse::SubmissionStatus]
      required :submission_status, enum: -> { Privy::AdvancedSwapResponse::SubmissionStatus }

      # @!attribute transaction_hash
      #   Solana transaction signature (base58).
      #
      #   @return [String]
      required :transaction_hash, String

      # @!attribute platform_fee
      #   Platform fee collected on a swap.
      #
      #   @return [Privy::Models::AdvancedSwapPlatformFee, nil]
      optional :platform_fee, -> { Privy::AdvancedSwapPlatformFee }

      # @!method initialize(in_amount:, input_token:, min_out_amount:, out_amount:, output_token:, provider:, signed_transaction:, slippage_bps:, submission_status:, transaction_hash:, platform_fee: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AdvancedSwapResponse} for more details.
      #
      #   Response from the synchronous Solana swap endpoint.
      #
      #   @param in_amount [String] Input amount consumed (smallest unit).
      #
      #   @param input_token [String] Input token address (base58).
      #
      #   @param min_out_amount [String] Minimum output amount guaranteed by slippage tolerance (smallest unit).
      #
      #   @param out_amount [String] Expected output amount before slippage (smallest unit).
      #
      #   @param output_token [String] Output token address (base58).
      #
      #   @param provider [String] Which aggregator fulfilled the swap (e.g. "dflow").
      #
      #   @param signed_transaction [String] Fully signed transaction (base64). Callers can re-submit to any Solana RPC for r
      #
      #   @param slippage_bps [Integer] Slippage applied in basis points. Reflects the resolved value if "auto" was requ
      #
      #   @param submission_status [Symbol, Privy::Models::AdvancedSwapResponse::SubmissionStatus] "accepted" if the network has acknowledged the transaction, "rejected" if the ne
      #
      #   @param transaction_hash [String] Solana transaction signature (base58).
      #
      #   @param platform_fee [Privy::Models::AdvancedSwapPlatformFee] Platform fee collected on a swap.

      # "accepted" if the network has acknowledged the transaction, "rejected" if the
      # network refused it, "skipped" if dry_run was set. Not an onchain confirmation.
      #
      # @see Privy::Models::AdvancedSwapResponse#submission_status
      module SubmissionStatus
        extend Privy::Internal::Type::Enum

        ACCEPTED = :accepted
        REJECTED = :rejected
        SKIPPED = :skipped

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
