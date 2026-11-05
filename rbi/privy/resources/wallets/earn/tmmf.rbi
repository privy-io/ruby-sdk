# typed: strong

module Privy
  module Resources
    class Wallets
      class Earn
        # Operations related to wallet actions
        class Tmmf
          # Sends `deposit_asset` from the registered wallet to the fund provider and tracks
          # delivery of the shares as a wallet action. The wallet owner or signers authorize
          # the request.
          sig do
            params(
              wallet_id: String,
              amount: String,
              chain: String,
              deposit_asset: String,
              fund: String,
              order_type: Privy::Wallets::TmmfOrderType::OrSymbol,
              nonce: String,
              reference_id: String,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::TmmfDepositActionResponse)
          end
          def deposit(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: A positive decimal amount in the asset's standard unit, e.g.
            # "1000.00".
            amount:,
            # Body param: Chain the fund is held on, e.g. "ethereum_sepolia".
            chain:,
            # Body param: Currency symbol, e.g. "USDC". Case-insensitive.
            deposit_asset:,
            # Body param: Fund ticker, e.g. "WTGXX". Case-insensitive.
            fund:,
            # Body param: How a tMMF order fills: `secondary` from the provider pool in
            # minutes, or `primary` at the next NAV strike.
            order_type:,
            # Body param: Unique caller-generated nonce used to prevent replaying a signed
            # wallet action request. Must be at least 24 characters (e.g. a cuid2 or UUID).
            nonce: nil,
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

          # Returns a page of the wallet's tMMF positions for all providers: shares, their
          # USD value at the latest NAV, pending dividends, and pending orders.
          sig do
            params(
              wallet_id: String,
              chain: String,
              cursor: String,
              fund: String,
              limit: Integer,
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::TmmfPositionResponse)
          end
          def list_positions(
            # ID of the wallet.
            wallet_id,
            # Chain the fund is held on, e.g. "ethereum_sepolia".
            chain: nil,
            # Cursor returned by the previous page.
            cursor: nil,
            # Fund ticker, e.g. "WTGXX". Case-insensitive.
            fund: nil,
            limit: nil,
            # The fund provider.
            provider: nil,
            request_options: {}
          )
          end

          # Registers the wallet with a tMMF provider on one chain. The provider must have
          # approved the wallet's user, e.g. an organization; the response reports whether
          # it also approved the wallet.
          sig do
            params(
              wallet_id: String,
              chain: String,
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::TmmfWalletResponse)
          end
          def register(
            # ID of the wallet.
            wallet_id,
            # Chain the fund is held on, e.g. "ethereum_sepolia".
            chain:,
            # The fund provider.
            provider:,
            request_options: {}
          )
          end

          # Sends fund shares from the registered wallet to the fund provider and tracks
          # delivery of `withdraw_asset` as a wallet action. The wallet owner or signers
          # authorize the request.
          sig do
            params(
              wallet_id: String,
              chain: String,
              fund: String,
              order_type: Privy::Wallets::TmmfOrderType::OrSymbol,
              shares: String,
              withdraw_asset: String,
              nonce: String,
              reference_id: String,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::TmmfWithdrawActionResponse)
          end
          def withdraw(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: Chain the fund is held on, e.g. "ethereum_sepolia".
            chain:,
            # Body param: Fund ticker, e.g. "WTGXX". Case-insensitive.
            fund:,
            # Body param: How a tMMF order fills: `secondary` from the provider pool in
            # minutes, or `primary` at the next NAV strike.
            order_type:,
            # Body param: A positive decimal amount in the asset's standard unit, e.g.
            # "1000.00".
            shares:,
            # Body param: Currency symbol, e.g. "USDC". Case-insensitive.
            withdraw_asset:,
            # Body param: Unique caller-generated nonce used to prevent replaying a signed
            # wallet action request. Must be at least 24 characters (e.g. a cuid2 or UUID).
            nonce: nil,
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
