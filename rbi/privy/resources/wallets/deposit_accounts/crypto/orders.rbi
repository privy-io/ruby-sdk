# typed: strong

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        class Crypto
          # Operations related to wallets
          class Orders
            # Fetch a crypto deposit-account sweep by wallet action ID. Returns
            # `{id, status}`. The path wallet is the destination (same as create). Accepts an
            # app secret or a user / wallet-signer JWT (`privy-app-id`).
            sig do
              params(
                order_id: String,
                wallet_id: String,
                request_options: Privy::RequestOptions::OrHash
              ).returns(Privy::GetCryptoDepositAccountOrderResponse)
            end
            def get(
              # Wallet action ID of the deposit sweep.
              order_id,
              # ID of the wallet.
              wallet_id:,
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
