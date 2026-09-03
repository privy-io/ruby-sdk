# typed: strong

module Privy
  module Resources
    class Wallets
      class Payout
        # Operations related to fiat onramping and offramping
        class Fiat
          # Initiates a payout (crypto to fiat offramp) from a wallet to a previously
          # registered external fiat account. Returns a pending wallet action; the crypto
          # transfer and fiat settlement are processed asynchronously.
          sig do
            params(
              wallet_id: String,
              destination: Privy::PayoutDestination::OrHash,
              source: Privy::PayoutSource::OrHash,
              privy_authorization_signature: String,
              privy_idempotency_key: String,
              privy_request_expiry: String,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::PayoutResponse)
          end
          def create(
            # Path param: The ID of the wallet.
            wallet_id,
            # Body param: The destination bank account for a payout.
            destination:,
            # Body param: The source crypto asset, chain, and amount for a payout.
            source:,
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
