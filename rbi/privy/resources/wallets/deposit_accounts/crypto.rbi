# typed: strong

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to wallets
        class Crypto
          # Operations related to wallets
          sig do
            returns(Privy::Resources::Wallets::DepositAccounts::Crypto::Orders)
          end
          attr_reader :orders

          # Creates deposit source wallets that sweep into the path wallet.
          sig do
            params(
              wallet_id: String,
              create_crypto_deposit_account_request_body:
                T.any(
                  Privy::CreateCryptoDepositAccountWithConfigRequestBody::OrHash,
                  Privy::CreateCryptoDepositAccountWithRouteRequestBody::OrHash
                ),
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::CreateCryptoDepositAccountResponse)
          end
          def create(
            # Path param: ID of the wallet.
            wallet_id,
            # Body param: Request body for creating a crypto deposit account.
            create_crypto_deposit_account_request_body:,
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

          # Returns active crypto deposit accounts that sweep into the path wallet. Requires
          # an app secret or a JWT for a wallet signer, plus `privy-app-id`.
          sig do
            params(
              wallet_id: String,
              cursor: String,
              limit: Integer,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Internal::Cursor[Privy::CryptoDepositAddressRoute])
          end
          def list(
            # ID of the wallet.
            wallet_id,
            cursor: nil,
            limit: nil,
            request_options: {}
          )
          end

          # Returns the tokens and chains a user can send from when creating a crypto
          # deposit account.
          sig do
            params(request_options: Privy::RequestOptions::OrHash).returns(
              Privy::CryptoDepositAccountConfigResponse
            )
          end
          def get_config(request_options: {})
          end

          # Fetch the earliest crypto deposit-account sweep into the path wallet after
          # `after`. Returns `{order: {id, status} | null}` — the same order object as GET
          # order. The path wallet is the destination (same as create). Accepts an app
          # secret or a user / wallet-signer JWT (`privy-app-id`).
          sig do
            params(
              wallet_id: String,
              after: Time,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::GetCryptoDepositAccountNextOrderResponse)
          end
          def get_next_order(
            # ID of the wallet.
            wallet_id,
            # Return the earliest sweep strictly after this timestamp.
            after:,
            request_options: {}
          )
          end

          # Returns an indicative route quote without creating a wallet. Amounts use token
          # standard units. Accepts an app secret or user token.
          sig do
            params(
              destination: Privy::DepositAccountCryptoQuoteAsset::OrHash,
              source: Privy::DepositAccountCryptoQuoteAsset::OrHash,
              input_amount: String,
              slippage_bps: Integer,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::DepositAccountCryptoQuoteResponse)
          end
          def quote(
            # An asset and chain for an indicative crypto deposit-account quote.
            destination:,
            # An asset and chain for an indicative crypto deposit-account quote.
            source:,
            # A positive decimal amount in the source token’s standard unit, not its smallest
            # on-chain unit.
            input_amount: nil,
            # Value in basis points: integer from 0 to 10000 (0% to 100%).
            slippage_bps: nil,
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
