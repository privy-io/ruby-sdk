# typed: strong

module Privy
  module Models
    # How deposit source wallets are chosen. Omission uses `dedicated`. Destination
    # reuse applies only to the destination's own chain type.
    module CryptoDepositAddressStrategy
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::CryptoDepositAddressStrategy) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      DEDICATED =
        T.let(:dedicated, Privy::CryptoDepositAddressStrategy::TaggedSymbol)
      PREFER_DESTINATION =
        T.let(
          :prefer_destination,
          Privy::CryptoDepositAddressStrategy::TaggedSymbol
        )
      REQUIRE_DESTINATION =
        T.let(
          :require_destination,
          Privy::CryptoDepositAddressStrategy::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::CryptoDepositAddressStrategy::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
