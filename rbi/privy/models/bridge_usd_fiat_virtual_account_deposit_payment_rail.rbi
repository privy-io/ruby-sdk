# typed: strong

module Privy
  module Models
    # Payment rails supported for USD virtual account deposits.
    module BridgeUsdFiatVirtualAccountDepositPaymentRail
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      ACH_PUSH =
        T.let(
          :ach_push,
          Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail::TaggedSymbol
        )
      WIRE =
        T.let(
          :wire,
          Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::BridgeUsdFiatVirtualAccountDepositPaymentRail::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
