# typed: strong

module Privy
  module Models
    module Wallets
      class WisdomTreeSettlementFundAmount < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::WisdomTreeSettlementFundAmount,
              Privy::Internal::AnyHash
            )
          end

        # A positive decimal amount in the asset's standard unit, e.g. "1000.00".
        sig { returns(String) }
        attr_accessor :amount

        # Fund ticker, e.g. "WTGXX". Case-insensitive.
        sig { returns(String) }
        attr_accessor :fund

        # An amount of fund shares a tMMF order sends or receives.
        sig { params(amount: String, fund: String).returns(T.attached_class) }
        def self.new(
          # A positive decimal amount in the asset's standard unit, e.g. "1000.00".
          amount:,
          # Fund ticker, e.g. "WTGXX". Case-insensitive.
          fund:
        )
        end

        sig { override.returns({ amount: String, fund: String }) }
        def to_hash
        end
      end
    end
  end
end
