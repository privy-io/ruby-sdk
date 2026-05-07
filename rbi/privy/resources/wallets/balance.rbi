# typed: strong

module Privy
  module Resources
    class Wallets
      # Operations related to wallets
      class Balance
        # Get the balance of a wallet by wallet ID.
        sig do
          params(
            wallet_id: String,
            token: Privy::Wallets::BalanceGetParams::Token::Variants,
            asset:
              T.any(
                Privy::Wallets::BalanceGetParams::Asset::OrSymbol,
                T::Array[Privy::WalletAsset::OrSymbol]
              ),
            chain:
              T.any(
                Privy::Wallets::BalanceGetParams::Chain::OrSymbol,
                T::Array[
                  Privy::Wallets::BalanceGetParams::Chain::UnionMember1::OrSymbol
                ]
              ),
            include_currency:
              Privy::Wallets::BalanceGetParams::IncludeCurrency::OrSymbol,
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::Models::Wallets::BalanceGetResponse)
        end
        def get(
          # ID of the wallet.
          wallet_id,
          # The token contract address(es) to query in format "chain:address" (e.g.,
          # "base:0x833589fCD6eDb6E08f4c7C32D4f71b54bdA02913" or
          # "solana:EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v").
          token: nil,
          asset: nil,
          chain: nil,
          include_currency: nil,
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
