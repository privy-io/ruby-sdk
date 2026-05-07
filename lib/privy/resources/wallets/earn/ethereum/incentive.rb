# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class Earn
        class Ethereum
          # Operations related to wallet actions
          class Incentive
            # Some parameter documentations has been truncated, see
            # {Privy::Models::Wallets::Earn::Ethereum::IncentiveClaimParams} for more details.
            #
            # Claim incentive rewards for a wallet.
            #
            # @overload _claim(wallet_id, chain:, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
            #
            # @param wallet_id [String] Path param: ID of the wallet.
            #
            # @param chain [String] Body param: The blockchain network on which to perform the incentive claim. Supp
            #
            # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
            #
            # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
            #
            # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
            #
            # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Privy::Models::EarnIncentiveClaimActionResponse]
            #
            # @see Privy::Models::Wallets::Earn::Ethereum::IncentiveClaimParams
            def _claim(wallet_id, params)
              parsed, options = Privy::Wallets::Earn::Ethereum::IncentiveClaimParams.dump_request(params)
              header_params =
                {
                  privy_authorization_signature: "privy-authorization-signature",
                  privy_idempotency_key: "privy-idempotency-key",
                  privy_request_expiry: "privy-request-expiry"
                }
              @client.request(
                method: :post,
                path: ["v1/wallets/%1$s/earn/ethereum/incentive/claim", wallet_id],
                headers: parsed.slice(*header_params.keys).transform_keys(header_params),
                body: parsed.except(*header_params.keys),
                model: Privy::EarnIncentiveClaimActionResponse,
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
end
