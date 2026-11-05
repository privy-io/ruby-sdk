# typed: strong

module Privy
  module Models
    module Wallets
      # How a tMMF order fills: `secondary` from the provider pool in minutes, or
      # `primary` at the next NAV strike.
      module TmmfOrderType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::TmmfOrderType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIMARY = T.let(:primary, Privy::Wallets::TmmfOrderType::TaggedSymbol)
        SECONDARY =
          T.let(:secondary, Privy::Wallets::TmmfOrderType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::Wallets::TmmfOrderType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
