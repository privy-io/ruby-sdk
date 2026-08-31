# typed: strong

module Privy
  module Resources
    class Wallets
      class Earn
        # Operations related to wallet actions
        class Ethereum
          # Operations related to wallet actions
          sig { returns(Privy::Resources::Wallets::Earn::Ethereum::Incentive) }
          attr_reader :incentive

          # Deposit assets into an ERC-4626 vault.
          sig do
            params(
              wallet_id: String,
              vault_id: String,
              amount: String,
              nonce: String,
              raw_amount: String,
              reference_id: String,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::EarnDepositActionResponse)
          end
          def deposit(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: The ID of the vault to deposit into.
            vault_id:,
            # Body param: Human-readable decimal amount to deposit (e.g. "1.5" for 1.5 USDC).
            # Exactly one of `amount` or `raw_amount` must be provided.
            amount: nil,
            # Body param: Unique caller-generated nonce used to prevent replaying a signed
            # wallet action request. Must be at least 24 characters (e.g. a cuid2 or UUID).
            nonce: nil,
            # Body param: Amount in smallest unit to deposit (e.g. "1500000" for 1.5 USDC with
            # 6 decimals). Exactly one of `amount` or `raw_amount` must be provided.
            raw_amount: nil,
            # Body param: Developer-provided identifier for this request. Must be unique per
            # app.
            reference_id: nil,
            # Header param: Request authorization signature. If multiple signatures are
            # required, they should be comma separated.
            privy_authorization_signature: nil,
            # Header param: Idempotency keys ensure API requests are executed only once within
            # a 24-hour window.
            privy_idempotency_key: nil,
            # Header param: Request expiry. Value is a Unix timestamp in milliseconds
            # representing the deadline by which the request must be processed.
            privy_request_expiry: nil,
            request_options: {}
          )
          end

          # Retrieve detailed information about an earn vault, including current APY and
          # liquidity.
          sig do
            params(
              vault_id: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(
              Privy::Wallets::EthereumEarnVaultDetailsResponse::Variants
            )
          end
          def vault_details(
            # The Privy vault ID.
            vault_id,
            request_options: {}
          )
          end

          # Retrieve a wallet's current position in a specific earn vault, including
          # deposit/withdraw totals and current onchain vault shares.
          sig do
            params(
              wallet_id: String,
              vault_id: String,
              include_archived: T::Boolean,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::EthereumEarnPositionResponse)
          end
          def vault_position(
            # ID of the wallet.
            wallet_id,
            # The vault ID to get position for.
            vault_id:,
            # Include archived wallets in lookup. Defaults to false.
            include_archived: nil,
            request_options: {}
          )
          end

          # Withdraw assets from an ERC-4626 vault.
          sig do
            params(
              wallet_id: String,
              vault_id: String,
              amount: String,
              nonce: String,
              raw_amount: String,
              reference_id: String,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::EarnWithdrawActionResponse)
          end
          def withdraw(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: The ID of the vault to withdraw from.
            vault_id:,
            # Body param: Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC).
            # Exactly one of `amount` or `raw_amount` must be provided.
            amount: nil,
            # Body param: Unique caller-generated nonce used to prevent replaying a signed
            # wallet action request. Must be at least 24 characters (e.g. a cuid2 or UUID).
            nonce: nil,
            # Body param: Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC
            # with 6 decimals). Exactly one of `amount` or `raw_amount` must be provided.
            raw_amount: nil,
            # Body param: Developer-provided identifier for this request. Must be unique per
            # app.
            reference_id: nil,
            # Header param: Request authorization signature. If multiple signatures are
            # required, they should be comma separated.
            privy_authorization_signature: nil,
            # Header param: Idempotency keys ensure API requests are executed only once within
            # a 24-hour window.
            privy_idempotency_key: nil,
            # Header param: Request expiry. Value is a Unix timestamp in milliseconds
            # representing the deadline by which the request must be processed.
            privy_request_expiry: nil,
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
end
