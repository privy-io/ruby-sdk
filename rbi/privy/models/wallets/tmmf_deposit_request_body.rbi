# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfDepositRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfDepositRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        sig { returns(String) }
        attr_accessor :amount

        # Chain the fund is held on, e.g. "ethereum_sepolia".
        sig { returns(String) }
        attr_accessor :chain

        # Currency symbol, e.g. "USDC". Case-insensitive.
        sig { returns(String) }
        attr_accessor :deposit_asset

        # Fund ticker, e.g. "WTGXX". Case-insensitive.
        sig { returns(String) }
        attr_accessor :fund

        # How a tMMF order fills: `secondary` from the provider pool in minutes, or
        # `primary` at the next NAV strike.
        sig { returns(Privy::Wallets::TmmfOrderType::OrSymbol) }
        attr_accessor :order_type

        # Unique caller-generated nonce used to prevent replaying a signed wallet action
        # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        sig { returns(T.nilable(String)) }
        attr_reader :nonce

        sig { params(nonce: String).void }
        attr_writer :nonce

        # Developer-provided identifier for this request. Must be unique per app.
        sig { returns(T.nilable(String)) }
        attr_reader :reference_id

        sig { params(reference_id: String).void }
        attr_writer :reference_id

        # Request body for buying tMMF shares with a currency the wallet holds.
        sig do
          params(
            amount: String,
            chain: String,
            deposit_asset: String,
            fund: String,
            order_type: Privy::Wallets::TmmfOrderType::OrSymbol,
            nonce: String,
            reference_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # A positive decimal amount in the asset's standard unit, e.g. "1000.00".
          amount:,
          # Chain the fund is held on, e.g. "ethereum_sepolia".
          chain:,
          # Currency symbol, e.g. "USDC". Case-insensitive.
          deposit_asset:,
          # Fund ticker, e.g. "WTGXX". Case-insensitive.
          fund:,
          # How a tMMF order fills: `secondary` from the provider pool in minutes, or
          # `primary` at the next NAV strike.
          order_type:,
          # Unique caller-generated nonce used to prevent replaying a signed wallet action
          # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
          nonce: nil,
          # Developer-provided identifier for this request. Must be unique per app.
          reference_id: nil
        )
        end

        sig do
          override.returns(
            {
              amount: String,
              chain: String,
              deposit_asset: String,
              fund: String,
              order_type: Privy::Wallets::TmmfOrderType::OrSymbol,
              nonce: String,
              reference_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
