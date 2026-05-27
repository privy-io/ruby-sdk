# frozen_string_literal: true

module Privy
  module Services
    class Earn
      class Ethereum
        class Incentive < Privy::Resources::Wallets::Earn::Ethereum::Incentive
          attr_reader :privy_client

          def initialize(client:, privy_client:)
            super(client: client)
            @privy_client = privy_client
          end

          # Claim incentive rewards for a wallet.
          #
          # @example Claim rewards on Base
          #   client.wallets.earn.ethereum.incentive.claim("wallet-id", earn_incentive_claim_params: {
          #     chain: "base"
          #   }, authorization_context: ctx)
          #
          # @param wallet_id [String] ID of the wallet to claim rewards for.
          # @param earn_incentive_claim_params [Hash] Body parameters for the incentive claim operation.
          # @option earn_incentive_claim_params [String] :chain Blockchain network on which to perform the incentive claim.
          # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
          # @param idempotency_key [String, nil] Ensures the request is executed only once.
          # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
          #   request expires. Defaults to the value computed by the client's
          #   PrivyRequestExpiryOptions.
          # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
          #
          # @return [Privy::Models::EarnIncentiveClaimActionResponse]
          def claim(
            wallet_id,
            earn_incentive_claim_params:,
            authorization_context: nil,
            idempotency_key: nil,
            request_expiry: nil,
            request_options: nil
          )
            prepared = Privy::Authorization.prepare_request(
              privy_client,
              method: :post,
              url: Privy::Authorization.signed_url(
                privy_client,
                "v1/wallets/#{wallet_id}/earn/ethereum/incentive/claim"
              ),
              body: earn_incentive_claim_params,
              authorization_context: authorization_context,
              idempotency_key: idempotency_key,
              request_expiry: privy_client.compute_request_expiry(request_expiry)
            )
            combined_params = earn_incentive_claim_params.merge(request_options: request_options)
            Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
            _claim(wallet_id, combined_params)
          end
        end
      end
    end
  end
end
