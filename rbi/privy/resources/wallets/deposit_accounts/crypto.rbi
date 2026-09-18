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

          # @api private
          sig { params(client: Privy::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
