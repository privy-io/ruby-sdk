# typed: strong

module Privy
  module Resources
    class Wallets
      # Operations related to wallets
      class Transactions
        # Get incoming and outgoing transactions of a wallet by wallet ID.
        sig do
          params(
            wallet_id: String,
            chain: Privy::Wallets::TransactionGetParams::Chain::OrSymbol,
            token: Privy::Wallets::TransactionGetParams::Token::Variants,
            asset:
              T.any(
                Privy::Wallets::TransactionGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              ),
            cursor: String,
            limit: T.nilable(Float),
            tx_hash: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::Models::Wallets::TransactionGetResponse)
        end
        def get(
          # ID of the wallet.
          wallet_id,
          chain:,
          # Exactly one of `token` or `asset` is required. Cannot be used together with
          # `asset`.
          token: nil,
          # Exactly one of `asset` or `token` is required. Cannot be used together with
          # `token`.
          asset: nil,
          cursor: nil,
          limit: nil,
          tx_hash: nil,
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
