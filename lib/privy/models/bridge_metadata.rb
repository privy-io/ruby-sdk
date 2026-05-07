# frozen_string_literal: true

module Privy
  module Models
    # Metadata about a Bridge transaction associated with a wallet event.
    module BridgeMetadata
      extend Privy::Internal::Type::Union

      # Bridge metadata for a crypto deposit via liquidation address.
      variant -> { Privy::BridgeCryptoDepositMetadata }

      # Bridge metadata for a refund via liquidation address.
      variant -> { Privy::BridgeRefundMetadata }

      # Bridge metadata for a fiat deposit via virtual account.
      variant -> { Privy::BridgeFiatDepositMetadata }

      # Bridge metadata for a crypto deposit via transfer.
      variant -> { Privy::BridgeCryptoTransferMetadata }

      # Bridge metadata for a fiat deposit via transfer.
      variant -> { Privy::BridgeFiatTransferMetadata }

      # Bridge metadata for a transfer refund.
      variant -> { Privy::BridgeTransferRefundMetadata }

      # Bridge metadata for a fiat deposit via static memo.
      variant -> { Privy::BridgeStaticMemoDepositMetadata }

      # @!method self.variants
      #   @return [Array(Privy::Models::BridgeCryptoDepositMetadata, Privy::Models::BridgeRefundMetadata, Privy::Models::BridgeFiatDepositMetadata, Privy::Models::BridgeCryptoTransferMetadata, Privy::Models::BridgeFiatTransferMetadata, Privy::Models::BridgeTransferRefundMetadata, Privy::Models::BridgeStaticMemoDepositMetadata)]
    end
  end
end
