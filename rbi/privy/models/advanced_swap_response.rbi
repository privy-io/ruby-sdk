# typed: strong

module Privy
  module Models
    class AdvancedSwapResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AdvancedSwapResponse, Privy::Internal::AnyHash)
        end

      # Input amount consumed (smallest unit).
      sig { returns(String) }
      attr_accessor :in_amount

      # Input token address (base58).
      sig { returns(String) }
      attr_accessor :input_token

      # Minimum output amount guaranteed by slippage tolerance (smallest unit).
      sig { returns(String) }
      attr_accessor :min_out_amount

      # Expected output amount before slippage (smallest unit).
      sig { returns(String) }
      attr_accessor :out_amount

      # Output token address (base58).
      sig { returns(String) }
      attr_accessor :output_token

      # Which aggregator fulfilled the swap (e.g. "dflow").
      sig { returns(String) }
      attr_accessor :provider

      # Fully signed transaction (base64). Callers can re-submit to any Solana RPC for
      # redundancy.
      sig { returns(String) }
      attr_accessor :signed_transaction

      # Slippage applied in basis points. Reflects the resolved value if "auto" was
      # requested.
      sig { returns(Integer) }
      attr_accessor :slippage_bps

      # "accepted" if the network has acknowledged the transaction, "rejected" if the
      # network refused it, "skipped" if dry_run was set. Not an onchain confirmation.
      sig { returns(Privy::SwapSubmissionStatus::OrSymbol) }
      attr_accessor :submission_status

      # Solana transaction signature (base58).
      sig { returns(String) }
      attr_accessor :transaction_hash

      # Platform fee collected on a swap.
      sig { returns(T.nilable(Privy::AdvancedSwapPlatformFee)) }
      attr_reader :platform_fee

      sig { params(platform_fee: Privy::AdvancedSwapPlatformFee::OrHash).void }
      attr_writer :platform_fee

      # Response from the synchronous Solana swap endpoint.
      sig do
        params(
          in_amount: String,
          input_token: String,
          min_out_amount: String,
          out_amount: String,
          output_token: String,
          provider: String,
          signed_transaction: String,
          slippage_bps: Integer,
          submission_status: Privy::SwapSubmissionStatus::OrSymbol,
          transaction_hash: String,
          platform_fee: Privy::AdvancedSwapPlatformFee::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Input amount consumed (smallest unit).
        in_amount:,
        # Input token address (base58).
        input_token:,
        # Minimum output amount guaranteed by slippage tolerance (smallest unit).
        min_out_amount:,
        # Expected output amount before slippage (smallest unit).
        out_amount:,
        # Output token address (base58).
        output_token:,
        # Which aggregator fulfilled the swap (e.g. "dflow").
        provider:,
        # Fully signed transaction (base64). Callers can re-submit to any Solana RPC for
        # redundancy.
        signed_transaction:,
        # Slippage applied in basis points. Reflects the resolved value if "auto" was
        # requested.
        slippage_bps:,
        # "accepted" if the network has acknowledged the transaction, "rejected" if the
        # network refused it, "skipped" if dry_run was set. Not an onchain confirmation.
        submission_status:,
        # Solana transaction signature (base58).
        transaction_hash:,
        # Platform fee collected on a swap.
        platform_fee: nil
      )
      end

      sig do
        override.returns(
          {
            in_amount: String,
            input_token: String,
            min_out_amount: String,
            out_amount: String,
            output_token: String,
            provider: String,
            signed_transaction: String,
            slippage_bps: Integer,
            submission_status: Privy::SwapSubmissionStatus::OrSymbol,
            transaction_hash: String,
            platform_fee: Privy::AdvancedSwapPlatformFee
          }
        )
      end
      def to_hash
      end
    end
  end
end
