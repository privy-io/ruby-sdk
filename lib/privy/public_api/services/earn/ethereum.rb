# frozen_string_literal: true

module Privy
  module Services
    class Earn
      class Ethereum < Privy::Resources::Wallets::Earn::Ethereum
        attr_reader :privy_client

        # @return [Privy::Services::Earn::Ethereum::Incentive]
        attr_reader :incentive

        def initialize(client:, privy_client:)
          super(client: client)
          @privy_client = privy_client
          @incentive = Privy::Services::Earn::Ethereum::Incentive.new(
            client: client,
            privy_client: privy_client
          )
        end

        # Deposit assets into an ERC-4626 vault.
        #
        # @example Deposit by human-readable amount
        #   client.wallets.earn.ethereum.deposit("wallet-id", earn_deposit_params: {
        #     vault_id: "vault-id",
        #     amount: "1.5"
        #   }, authorization_context: ctx)
        #
        # @example Deposit by raw amount
        #   client.wallets.earn.ethereum.deposit("wallet-id", earn_deposit_params: {
        #     vault_id: "vault-id",
        #     raw_amount: "1500000"
        #   })
        #
        # @param wallet_id [String] ID of the wallet to deposit from.
        # @param earn_deposit_params [Hash] Body parameters for the deposit operation.
        # @option earn_deposit_params [String] :vault_id ID of the vault to deposit into.
        # @option earn_deposit_params [String, nil] :amount Human-readable decimal amount to deposit. Exactly one of
        #   :amount or :raw_amount must be provided.
        # @option earn_deposit_params [String, nil] :raw_amount Amount in the smallest unit to deposit. Exactly one of
        #   :amount or :raw_amount must be provided.
        # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
        # @param idempotency_key [String, nil] Ensures the request is executed only once.
        # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
        #   request expires. Defaults to the value computed by the client's
        #   PrivyRequestExpiryOptions.
        # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
        #
        # @return [Privy::Models::EarnDepositActionResponse]
        def deposit(
          wallet_id,
          earn_deposit_params:,
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
              "v1/wallets/#{wallet_id}/earn/ethereum/deposit"
            ),
            body: earn_deposit_params,
            authorization_context: authorization_context,
            idempotency_key: idempotency_key,
            request_expiry: privy_client.compute_request_expiry(request_expiry)
          )
          combined_params = earn_deposit_params.merge(request_options: request_options)
          Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
          _deposit(wallet_id, combined_params)
        end

        # Withdraw assets from an ERC-4626 vault.
        #
        # @example Withdraw by human-readable amount
        #   client.wallets.earn.ethereum.withdraw("wallet-id", earn_withdraw_params: {
        #     vault_id: "vault-id",
        #     amount: "1.5"
        #   }, authorization_context: ctx)
        #
        # @example Withdraw by raw amount
        #   client.wallets.earn.ethereum.withdraw("wallet-id", earn_withdraw_params: {
        #     vault_id: "vault-id",
        #     raw_amount: "1500000"
        #   })
        #
        # @param wallet_id [String] ID of the wallet to withdraw from.
        # @param earn_withdraw_params [Hash] Body parameters for the withdraw operation.
        # @option earn_withdraw_params [String] :vault_id ID of the vault to withdraw from.
        # @option earn_withdraw_params [String, nil] :amount Human-readable decimal amount to withdraw. Exactly one of
        #   :amount or :raw_amount must be provided.
        # @option earn_withdraw_params [String, nil] :raw_amount Amount in the smallest unit to withdraw. Exactly one of
        #   :amount or :raw_amount must be provided.
        # @param authorization_context [Privy::Authorization::AuthorizationContext, nil] Authorization context for owned wallets.
        # @param idempotency_key [String, nil] Ensures the request is executed only once.
        # @param request_expiry [Integer, nil] Absolute Unix-ms timestamp at which the
        #   request expires. Defaults to the value computed by the client's
        #   PrivyRequestExpiryOptions.
        # @param request_options [Privy::RequestOptions, Hash, nil] Transport-level config (timeouts, retries).
        #
        # @return [Privy::Models::EarnWithdrawActionResponse]
        def withdraw(
          wallet_id,
          earn_withdraw_params:,
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
              "v1/wallets/#{wallet_id}/earn/ethereum/withdraw"
            ),
            body: earn_withdraw_params,
            authorization_context: authorization_context,
            idempotency_key: idempotency_key,
            request_expiry: privy_client.compute_request_expiry(request_expiry)
          )
          combined_params = earn_withdraw_params.merge(request_options: request_options)
          Privy::Authorization.merge_prepared_headers!(combined_params, prepared.headers)
          _withdraw(wallet_id, combined_params)
        end
      end
    end
  end
end
