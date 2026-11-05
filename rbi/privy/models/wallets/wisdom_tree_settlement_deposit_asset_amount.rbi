# typed: strong

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementDepositAssetAmount < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::WisdomTreeSettlementDepositAssetAmount,
              Privy::Internal::AnyHash
            )
          end

        # A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        sig { returns(String) }
        attr_accessor :amount

        # Currency symbol, e.g. "USDC". Case-insensitive.
        sig { returns(String) }
        attr_accessor :deposit_asset

        # An amount of the currency a tMMF deposit sends.
        sig do
          params(amount: String, deposit_asset: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # A positive decimal amount in the asset's standard unit, e.g. "1000.00".
          amount:,
          # Currency symbol, e.g. "USDC". Case-insensitive.
          deposit_asset:
        )
        end

        sig { override.returns({ amount: String, deposit_asset: String }) }
        def to_hash
        end
      end
    end
  end
end
