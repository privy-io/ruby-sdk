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
          # @overload deposit(wallet_id, vault_id:, amount: nil, nonce: nil, raw_amount: nil, reference_id: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param vault_id [String] Body param: The ID of the vault to deposit into.
          #
          # @param amount [String] Body param: Human-readable decimal amount to deposit (e.g. "1.5" for 1.5 USDC).
          #
          # @param nonce [String] Body param: Unique caller-generated nonce used to prevent replaying a signed wal
          #
          # @param raw_amount [String] Body param: Amount in smallest unit to deposit (e.g. "1500000" for 1.5 USDC with
          #
          # @param reference_id [String] Body param: Developer-provided identifier for this request. Must be unique per a
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
          def deposit(wallet_id, params)
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

          # Retrieve detailed information about an earn vault, including current APY and
          # liquidity.
          #
          # @overload vault_details(vault_id, request_options: {})
          #
          # @param vault_id [String] The Privy vault ID.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::AaveVaultDetails, Privy::Models::Wallets::MorphoVaultDetails, Privy::Models::Wallets::TempoVaultDetails, Privy::Models::Wallets::VedaVaultDetails]
          #
          # @see Privy::Models::Wallets::Earn::EthereumVaultDetailsParams
          def vault_details(vault_id, params = {})
            @client.request(
              method: :get,
              path: ["v1/earn/ethereum/vaults/%1$s", vault_id],
              model: Privy::Wallets::EthereumEarnVaultDetailsResponse,
              options: params[:request_options]
            )
          end

          # Retrieve a wallet's current position in a specific earn vault, including
          # deposit/withdraw totals and current onchain vault shares.
          #
          # @overload vault_position(wallet_id, vault_id:, include_archived: nil, request_options: {})
          #
          # @param wallet_id [String] ID of the wallet.
          #
          # @param vault_id [String] The vault ID to get position for.
          #
          # @param include_archived [Boolean] Include archived wallets in lookup. Defaults to false.
          #
          # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Privy::Models::Wallets::EthereumEarnPositionResponse]
          #
          # @see Privy::Models::Wallets::Earn::EthereumVaultPositionParams
          def vault_position(wallet_id, params)
            parsed, options = Privy::Wallets::Earn::EthereumVaultPositionParams.dump_request(params)
            query = Privy::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["v1/wallets/%1$s/earn/ethereum/vaults", wallet_id],
              query: query,
              model: Privy::Wallets::EthereumEarnPositionResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {Privy::Models::Wallets::Earn::EthereumWithdrawParams} for more details.
          #
          # Withdraw assets from an ERC-4626 vault.
          #
          # @overload withdraw(wallet_id, vault_id:, amount: nil, nonce: nil, raw_amount: nil, reference_id: nil, privy_authorization_signature: nil, privy_idempotency_key: nil, privy_request_expiry: nil, request_options: {})
          #
          # @param wallet_id [String] Path param: ID of the wallet.
          #
          # @param vault_id [String] Body param: The ID of the vault to withdraw from.
          #
          # @param amount [String] Body param: Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC).
          #
          # @param nonce [String] Body param: Unique caller-generated nonce used to prevent replaying a signed wal
          #
          # @param raw_amount [String] Body param: Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC wit
          #
          # @param reference_id [String] Body param: Developer-provided identifier for this request. Must be unique per a
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
          def withdraw(wallet_id, params)
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
