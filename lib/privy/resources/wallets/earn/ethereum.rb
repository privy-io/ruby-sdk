# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class Earn
        # Operations related to wallet actions
        class Ethereum
          # Operations related to wallet actions
          # @return [Privy::Resources::Wallets::Earn::Ethereum::Incentive]
          attr_reader :incentive

          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::Earn::EthereumDepositParams} for more details.
          #
          # Deposit assets into an ERC-4626 vault.
          #
          # @overload _deposit(wallet_id, vault_id:, amount: nil, raw_amount: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param vault_id [String] Body param: The ID of the vault to deposit into.
          #
          # @param amount [String] Body param: Human-readable decimal amount to deposit (e.g. "1.5" for 1.5 USDC).
          #
          # @param raw_amount [String] Body param: Amount in smallest unit to deposit (e.g. "1500000" for 1.5 USDC with
          #
          # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
          #
          # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
          #
          # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::EarnDepositActionResponse]
          #
          # @see Privy::Models::Wallets::Earn::EthereumDepositParams
          def _deposit(wallet_id, params)
            parsed, options = Privy::Wallets::Earn::EthereumDepositParams.dump_request(params)
            header_params =
              {
                privy_authorization_signature: "privy-authorization-signature",
                privy_idempotency_key: "privy-idempotency-key",
                privy_request_expiry: "privy-request-expiry"
              }
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/earn/ethereum/deposit", wallet_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Privy::Wallets::EarnDepositActionResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::Earn::EthereumWithdrawParams} for more details.
          #
          # Withdraw assets from an ERC-4626 vault.
          #
          # @overload _withdraw(wallet_id, vault_id:, amount: nil, raw_amount: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param vault_id [String] Body param: The ID of the vault to withdraw from.
          #
          # @param amount [String] Body param: Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC).
          #
          # @param raw_amount [String] Body param: Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC wit
          #
          # @param privy_authorization_signature [String] Header param: Request authorization signature. If multiple signatures are requir
          #
          # @param privy_idempotency_key [String] Header param: Idempotency keys ensure API requests are executed only once within
          #
          # @param privy_request_expiry [String] Header param: Request expiry. Value is a Unix timestamp in milliseconds represen
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::EarnWithdrawActionResponse]
          #
          # @see Privy::Models::Wallets::Earn::EthereumWithdrawParams
          def _withdraw(wallet_id, params)
            parsed, options = Privy::Wallets::Earn::EthereumWithdrawParams.dump_request(params)
            header_params =
              {
                privy_authorization_signature: "privy-authorization-signature",
                privy_idempotency_key: "privy-idempotency-key",
                privy_request_expiry: "privy-request-expiry"
              }
            @client.request(
              method: :post,
              path: ["v1/wallets/%1$s/earn/ethereum/withdraw", wallet_id],
              headers: parsed.slice(*header_params.keys).transform_keys(header_params),
              body: parsed.except(*header_params.keys),
              model: Privy::Wallets::EarnWithdrawActionResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Privy::Client]
          def initialize(client:)
            @client = client
            @incentive = Privy::Resources::Wallets::Earn::Ethereum::Incentive.new(client: client)
          end
        end
      end
    end
  end
end
