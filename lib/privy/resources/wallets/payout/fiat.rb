# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class Payout
        # Operations related to fiat onramping and offramping
        class Fiat
          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::Payout::FiatCreateParams} for more details.
          #
          # Initiates a payout (crypto to fiat offramp) from a wallet to a previously
          # registered external fiat account. Returns a pending wallet action; the crypto
          # transfer and fiat settlement are processed asynchronously.
          #
          # @overload create(wallet_id, destination:, source:, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: The ID of the wallet.
          #
          # @param destination [Privy::Models::PayoutDestination] Body param: The destination bank account for a payout.
          #
          # @param source [Privy::Models::PayoutSource] Body param: The source crypto asset, chain, and amount for a payout.
          #
          # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
          #
          # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
          #
          # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::PayoutResponse]
          #
          # @see Privy::Models::Wallets::Payout::FiatCreateParams
          def create(wallet_id, params)
            parsed, options = Privy::Wallets::Payout::FiatCreateParams.dump_request(params)
            header_params =
              {
                privy_authorization_signature: "privy-authorization-signature",
                privy_idempotency_key: "privy-idempotency-key",
                privy_request_expiry: "privy-request-expiry"
              }
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/payout/fiat", wallet_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Privy::Wallets::PayoutResponse,
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
end
