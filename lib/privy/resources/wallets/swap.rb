# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      # Operations for swapping tokens within wallets
      class Swap
        # Some parameter documentations has been truncated, see
        # {Privy::Models::Wallets::SwapExecuteParams} for more details.
        #
        # Execute a token swap within a wallet.
        #
        # @overload execute(wallet_id, base_amount:, destination:, source:, amount_type: nil, fee_configuration: nil, slippage_bps: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, request_options: {})
        #
        # @param wallet_id [String] Path param: ID of the wallet.
        #
        # @param base_amount [String] Body param: Amount in base units (e.g., wei for ETH). Must be a non-negative int
        #
        # @param destination [Privy::Models::SwapDestination] Body param: The output side of a swap execution request.
        #
        # @param source [Privy::Models::SwapSource] Body param: The input side of a swap request, including token and chain.
        #
        # @param amount_type [Symbol, Privy::Models::AmountType] Body param: Whether the amount refers to the input token or output token.
        #
        # @param fee_configuration [Privy::Models::FeeConfiguration] Body param: Total fees assessed on a transfer, in BPS
        #
        # @param slippage_bps [Float] Body param: Maximum slippage tolerance in basis points (e.g., 50 for 0.5%).
        #
        # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
        #
        # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::SwapActionResponse]
        #
        # @see Privy::Models::Wallets::SwapExecuteParams
        def execute(wallet_id, params)
          parsed, options = Privy::Wallets::SwapExecuteParams.dump_request(params)
          header_params =
            {
              privy_authorization_signature: "privy-authorization-signature",
              privy_idempotency_key: "privy-idempotency-key"
            }
          @client.request(
            method: :post,
            path: ["v1/wallets/%1$s/swap", wallet_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Privy::SwapActionResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Privy::Models::Wallets::SwapQuoteParams} for more details.
        #
        # Get a price quote for swapping tokens within a wallet.
        #
        # @overload quote(wallet_id, base_amount:, destination:, source:, amount_type: nil, fee_configuration: nil, slippage_bps: nil, privy_authorization_signature: nil, request_options: {})
        #
        # @param wallet_id [String] Path param: ID of the wallet.
        #
        # @param base_amount [String] Body param: Amount in base units (e.g., wei for ETH). Must be a non-negative int
        #
        # @param destination [Privy::Models::SwapQuoteDestination] Body param: The output side of a swap quote request.
        #
        # @param source [Privy::Models::SwapSource] Body param: The input side of a swap request, including token and chain.
        #
        # @param amount_type [Symbol, Privy::Models::AmountType] Body param: Whether the amount refers to the input token or output token.
        #
        # @param fee_configuration [Privy::Models::FeeConfiguration] Body param: Total fees assessed on a transfer, in BPS
        #
        # @param slippage_bps [Float] Body param: Maximum slippage tolerance in basis points (e.g., 50 for 0.5%). If o
        #
        # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::SwapQuoteResponse]
        #
        # @see Privy::Models::Wallets::SwapQuoteParams
        def quote(wallet_id, params)
          parsed, options = Privy::Wallets::SwapQuoteParams.dump_request(params)
          header_params = {privy_authorization_signature: "privy-authorization-signature"}
          @client.request(
            method: :post,
            path: ["v1/wallets/%1$s/swap/quote", wallet_id],
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Privy::SwapQuoteResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
