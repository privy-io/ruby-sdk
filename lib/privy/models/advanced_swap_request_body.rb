# frozen_string_literal: true

module Privy
  module Models
    class AdvancedSwapRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute amount
      #   Amount in the smallest unit of the input token (e.g. lamports for SOL).
      #
      #   @return [String]
      required :amount, String

      # @!attribute input_token
      #   Input token address (base58 mint address).
      #
      #   @return [String]
      required :input_token, String

      # @!attribute output_token
      #   Output token address (base58 mint address).
      #
      #   @return [String]
      required :output_token, String

      # @!attribute caip2
      #   CAIP-2 chain identifier. Defaults to Solana mainnet.
      #
      #   @return [String, nil]
      optional :caip2, String

      # @!attribute dry_run
      #   When true, skip transaction submission (quote + sign only). The signed
      #   transaction is still returned.
      #
      #   @return [Boolean, nil]
      optional :dry_run, Privy::Internal::Type::Boolean

      # @!attribute fee_recipient
      #   Token account (base58) to receive the platform fee. Must exist on-chain for the
      #   output token.
      #
      #   @return [String, nil]
      optional :fee_recipient, String

      # @!attribute platform_fee_bps
      #   Platform fee in basis points, taken from the output token. Requires
      #   fee_recipient when > 0.
      #
      #   @return [Integer, nil]
      optional :platform_fee_bps, Integer

      # @!attribute slippage_bps
      #   Max slippage tolerance in basis points (0-10000), or "auto" for
      #   provider-determined. Defaults to "auto".
      #
      #   @return [Integer, Symbol, Privy::Models::AdvancedSwapRequestBody::SlippageBps, nil]
      optional :slippage_bps, union: -> { Privy::AdvancedSwapRequestBody::SlippageBps }

      # @!method initialize(amount:, input_token:, output_token:, caip2: nil, dry_run: nil, fee_recipient: nil, platform_fee_bps: nil, slippage_bps: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::AdvancedSwapRequestBody} for more details.
      #
      #   Request body for initiating a synchronous Solana token swap through an embedded
      #   wallet.
      #
      #   @param amount [String] Amount in the smallest unit of the input token (e.g. lamports for SOL).
      #
      #   @param input_token [String] Input token address (base58 mint address).
      #
      #   @param output_token [String] Output token address (base58 mint address).
      #
      #   @param caip2 [String] CAIP-2 chain identifier. Defaults to Solana mainnet.
      #
      #   @param dry_run [Boolean] When true, skip transaction submission (quote + sign only). The signed transacti
      #
      #   @param fee_recipient [String] Token account (base58) to receive the platform fee. Must exist on-chain for the
      #
      #   @param platform_fee_bps [Integer] Platform fee in basis points, taken from the output token. Requires fee_recipien
      #
      #   @param slippage_bps [Integer, Symbol, Privy::Models::AdvancedSwapRequestBody::SlippageBps] Max slippage tolerance in basis points (0-10000), or "auto" for provider-determi

      # Max slippage tolerance in basis points (0-10000), or "auto" for
      # provider-determined. Defaults to "auto".
      #
      # @see Privy::Models::AdvancedSwapRequestBody#slippage_bps
      module SlippageBps
        extend Privy::Internal::Type::Union

        variant Integer

        variant const: -> { Privy::Models::AdvancedSwapRequestBody::SlippageBps::AUTO }

        # @!method self.variants
        #   @return [Array(Integer, Symbol)]

        define_sorbet_constant!(:Variants) do
          T.type_alias { T.any(Integer, Privy::AdvancedSwapRequestBody::SlippageBps::TaggedSymbol) }
        end

        # @!group

        AUTO = :auto

        # @!endgroup
      end
    end
  end
end
