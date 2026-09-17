# typed: strong

module Privy
  module Models
    # Controls deposit source selection. `dedicated` creates or reuses eligible
    # dedicated source wallets, never the destination wallet. This is the default when
    # omitted, including for existing routes. `prefer_destination` uses the
    # destination wallet when it is eligible and its chain family is requested;
    # otherwise it uses dedicated source wallets. `require_destination` requires the
    # destination wallet to serve its own chain family when that family is requested
    # and fails without fallback if it cannot; other requested families still use
    # dedicated source wallets. On destination reuse, all strategies remove all
    # existing automation attachments, including matching and disabled ones, then
    # attach the requested automation. Exported wallets cannot serve as deposit
    # sources.
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
