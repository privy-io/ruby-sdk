# typed: strong

module Privy
  module Models
    module Wallets
      # Whether an APY allocation earns the base or boosted rate.
      module EarnPositionApyType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::Wallets::EarnPositionApyType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BOOST = T.let(:boost, Privy::Wallets::EarnPositionApyType::TaggedSymbol)
        BASE = T.let(:base, Privy::Wallets::EarnPositionApyType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::Wallets::EarnPositionApyType::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
