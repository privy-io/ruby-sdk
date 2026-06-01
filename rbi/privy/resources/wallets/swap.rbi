# typed: strong

module Privy
  module Resources
    class Wallets
      # Operations for swapping tokens within wallets
      class Swap
        # Execute a token swap within a wallet.
        sig do
          params(
            wallet_id: String,
            base_amount: String,
            destination: Privy::SwapDestination::OrHash,
            source: Privy::SwapSource::OrHash,
            amount_type: Privy::AmountType::OrSymbol,
            fee_configuration: Privy::FeeConfiguration::OrHash,
            slippage_bps: Float,
            privy_authorization_signature: String,
            privy_idempotency_key: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::SwapActionResponse)
        end
        def execute(
          # Path param: ID of the wallet.
          wallet_id,
          # Body param: Amount in base units (e.g., wei for ETH). Must be a non-negative
          # integer string.
          base_amount:,
          # Body param: The output side of a swap execution request.
          destination:,
          # Body param: The input side of a swap request, including token and chain.
          source:,
          # Body param: Whether the amount refers to the input token or output token.
          amount_type: nil,
          # Body param: Total fees assessed on a transfer, in BPS
          fee_configuration: nil,
          # Body param: Maximum slippage tolerance in basis points (e.g., 50 for 0.5%).
          slippage_bps: nil,
          # Header param: Request authorization signature. If multiple signatures are
          # required, they should be comma separated.
          privy_authorization_signature: nil,
          # Header param: Idempotency keys ensure API requests are executed only once within
          # a 24-hour window.
          privy_idempotency_key: nil,
          request_options: {}
        )
        end

        # Get a price quote for swapping tokens within a wallet.
        sig do
          params(
            wallet_id: String,
            base_amount: String,
            destination: Privy::SwapQuoteDestination::OrHash,
            source: Privy::SwapSource::OrHash,
            amount_type: Privy::AmountType::OrSymbol,
            fee_configuration: Privy::FeeConfiguration::OrHash,
            slippage_bps: Float,
            privy_authorization_signature: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::SwapQuoteResponse)
        end
        def quote(
          # Path param: ID of the wallet.
          wallet_id,
          # Body param: Amount in base units (e.g., wei for ETH). Must be a non-negative
          # integer string.
          base_amount:,
          # Body param: The output side of a swap quote request.
          destination:,
          # Body param: The input side of a swap request, including token and chain.
          source:,
          # Body param: Whether the amount refers to the input token or output token.
          amount_type: nil,
          # Body param: Total fees assessed on a transfer, in BPS
          fee_configuration: nil,
          # Body param: Maximum slippage tolerance in basis points (e.g., 50 for 0.5%). If
          # omitted, auto-slippage is used.
          slippage_bps: nil,
          # Header param: Request authorization signature. If multiple signatures are
          # required, they should be comma separated.
          privy_authorization_signature: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
