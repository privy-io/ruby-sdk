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
              raw_amount: String,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::EarnDepositActionResponse)
          end
          def _deposit(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: The ID of the vault to deposit into.
            vault_id:,
            # Body param: Human-readable decimal amount to deposit (e.g. "1.5" for 1.5 USDC).
            # Exactly one of `amount` or `raw_amount` must be provided.
            amount: nil,
            # Body param: Amount in smallest unit to deposit (e.g. "1500000" for 1.5 USDC with
            # 6 decimals). Exactly one of `amount` or `raw_amount` must be provided.
            raw_amount: nil,
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

          # Withdraw assets from an ERC-4626 vault.
          sig do
            params(
              wallet_id: String,
              vault_id: String,
              amount: String,
              raw_amount: String,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::EarnWithdrawActionResponse)
          end
          def _withdraw(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: The ID of the vault to withdraw from.
            vault_id:,
            # Body param: Human-readable decimal amount to withdraw (e.g. "1.5" for 1.5 USDC).
            # Exactly one of `amount` or `raw_amount` must be provided.
            amount: nil,
            # Body param: Amount in smallest unit to withdraw (e.g. "1500000" for 1.5 USDC
            # with 6 decimals). Exactly one of `amount` or `raw_amount` must be provided.
            raw_amount: nil,
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
