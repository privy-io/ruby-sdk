# typed: strong

module Privy
  module Models
    class TronSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::TronSendTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:1').
      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(String) }
      attr_accessor :transaction_id

      # Data returned by the Tron `tron_sendTransaction` RPC.
      sig do
        params(caip2: String, transaction_id: String).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        caip2:,
        transaction_id:
      )
      end

      sig { override.returns({ caip2: String, transaction_id: String }) }
      def to_hash
      end
    end
  end
end
