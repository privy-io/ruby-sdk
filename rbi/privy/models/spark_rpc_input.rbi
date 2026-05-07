# typed: strong

module Privy
  module Models
    # Request body for Spark wallet RPC operations, discriminated by method.
    module SparkRpcInput
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::SparkTransferRpcInput,
            Privy::SparkGetBalanceRpcInput,
            Privy::SparkTransferTokensRpcInput,
            Privy::SparkGetStaticDepositAddressRpcInput,
            Privy::SparkGetClaimStaticDepositQuoteRpcInput,
            Privy::SparkClaimStaticDepositRpcInput,
            Privy::SparkCreateLightningInvoiceRpcInput,
            Privy::SparkPayLightningInvoiceRpcInput,
            Privy::SparkSignMessageWithIdentityKeyRpcInput
          )
        end

      sig { override.returns(T::Array[Privy::SparkRpcInput::Variants]) }
      def self.variants
      end
    end
  end
end
