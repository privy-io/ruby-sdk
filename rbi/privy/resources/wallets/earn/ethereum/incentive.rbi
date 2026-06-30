# typed: strong

module Privy
  module Resources
    class Wallets
      class Earn
        class Ethereum
          # Operations related to wallet actions
          class Incentive
            # Claim incentive rewards for a wallet.
            sig do
              params(
                wallet_id: String,
                chain: String,
                privy_authorization_signature: String,
                privy_idempotency_key: String,
                privy_request_expiry: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::Wallets::EarnIncentiveClaimActionResponse)
            end
            def _claim(
              # Path param: ID of the wallet.
              wallet_id,
              # Body param: The blockchain network on which to perform the incentive claim.
              # Supported chains include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana',
              # and more, along with their respective testnets.
              chain:,
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
end
