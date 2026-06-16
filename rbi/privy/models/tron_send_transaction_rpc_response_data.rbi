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
      attr_accessor :hash_

      sig { returns(String) }
      attr_accessor :transaction_id

      sig { returns(T.nilable(String)) }
      attr_reader :reference_id

      sig { params(reference_id: String).void }
      attr_writer :reference_id

      # Data returned by the Tron `tron_sendTransaction` RPC.
      sig do
        params(
          caip2: String,
          hash_: String,
          transaction_id: String,
          reference_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        caip2:,
        hash_:,
        transaction_id:,
        reference_id: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            hash_: String,
            transaction_id: String,
            reference_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
