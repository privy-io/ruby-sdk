# typed: strong

module Privy
  module Models
    # Response body for Spark wallet RPC operations, discriminated by method.
    module SparkRpcResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SparkTransferRpcResponse,
            Privy::SparkGetBalanceRpcResponse,
            Privy::SparkTransferTokensRpcResponse,
            Privy::SparkGetStaticDepositAddressRpcResponse,
            Privy::SparkGetClaimStaticDepositQuoteRpcResponse,
            Privy::SparkClaimStaticDepositRpcResponse,
            Privy::SparkCreateLightningInvoiceRpcResponse,
            Privy::SparkPayLightningInvoiceRpcResponse,
            Privy::SparkSignMessageWithIdentityKeyRpcResponse
          )
        end

      sig { override.returns(T::Array[Privy::SparkRpcResponse::Variants]) }
      def self.variants
      end
    end
  end
end
