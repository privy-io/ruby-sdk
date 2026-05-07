# typed: strong

module Privy
  module Models
    # Metadata about a Bridge transaction associated with a wallet event.
    module BridgeMetadata
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::BridgeCryptoDepositMetadata,
            Privy::BridgeRefundMetadata,
            Privy::BridgeFiatDepositMetadata,
            Privy::BridgeCryptoTransferMetadata,
            Privy::BridgeFiatTransferMetadata,
            Privy::BridgeTransferRefundMetadata,
            Privy::BridgeStaticMemoDepositMetadata
          )
        end

      sig { override.returns(T::Array[Privy::BridgeMetadata::Variants]) }
      def self.variants
      end
    end
  end
end
