# typed: strong

module Privy
  module Models
    # The deposit instructions for a virtual account.
    module BridgeFiatVirtualAccountDepositInstructions
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::BridgeUsdFiatVirtualAccountDepositInstructions,
            Privy::BridgeEurFiatVirtualAccountDepositInstructions,
            Privy::BridgeMxnFiatVirtualAccountDepositInstructions,
            Privy::BridgeBrlFiatVirtualAccountDepositInstructions,
            Privy::BridgeGbpFiatVirtualAccountDepositInstructions
          )
        end

      sig do
        override.returns(
          T::Array[Privy::BridgeFiatVirtualAccountDepositInstructions::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
