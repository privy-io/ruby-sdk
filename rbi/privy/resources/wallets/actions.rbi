# typed: strong

module Privy
  module Resources
    class Wallets
      # Operations related to wallet actions
      class Actions
        # Get the current status of a wallet action by its ID. Use `?include=steps` to
        # include step-level details.
        sig do
          params(
            action_id: String,
            wallet_id: String,
            include: Privy::Wallets::WalletActionInclude::OrSymbol,
            privy_authorization_signature: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::Wallets::WalletActionResponse::Variants)
        end
        def get(
          # Path param: ID of the wallet action.
          action_id,
          # Path param: ID of the wallet.
          wallet_id:,
          # Query param: Expandable relations to include on a wallet action response.
          include: nil,
          # Header param: Request authorization signature. If multiple signatures are
          # required, they should be comma separated.
          privy_authorization_signature: nil,
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
