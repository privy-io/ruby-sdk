# typed: strong

module Privy
  module Resources
    class Users
      class Earn
        # Operations related to wallet actions
        class Tmmf
          # Returns a user's registration with each tMMF provider and a page of the wallets
          # registered for it, with each status read live from the provider.
          sig do
            params(
              user_id: String,
              provider: T.any(Privy::Wallets::TmmfProvider::OrSymbol, String),
              wallet_id: String,
              wallets_cursor: String,
              wallets_limit: Integer,
              request_options: Privy::RequestOptions::OrHash
            ).returns(Privy::Wallets::TmmfUserResponse)
          end
          def get(
            # ID of the Privy user.
            user_id,
            # The fund provider.
            provider: nil,
            # Only return the registration of this wallet.
            wallet_id: nil,
            # Cursor returned by the previous page.
            wallets_cursor: nil,
            # Maximum number of wallet registrations to return.
            wallets_limit: nil,
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
