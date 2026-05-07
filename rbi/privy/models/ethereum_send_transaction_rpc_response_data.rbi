# typed: strong

module Privy
  module Models
    class EthereumSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSendTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:1').
      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(String) }
      attr_accessor :hash_

      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      # An unsigned Ethereum transaction object. Supports standard EVM transaction types
      # (0, 1, 2, 4) and Tempo transactions (type 118).
      sig { returns(T.nilable(Privy::UnsignedEthereumTransaction::Variants)) }
      attr_reader :transaction_request

      sig do
        params(
          transaction_request:
            T.any(
              Privy::UnsignedStandardEthereumTransaction::OrHash,
              Privy::UnsignedTempoTransaction::OrHash
            )
        ).void
      end
      attr_writer :transaction_request

      sig { returns(T.nilable(String)) }
      attr_reader :user_operation_hash

      sig { params(user_operation_hash: String).void }
      attr_writer :user_operation_hash

      # Data returned by the EVM `eth_sendTransaction` RPC.
      sig do
        params(
          caip2: String,
          hash_: String,
          reference_id: T.nilable(String),
          transaction_id: String,
          transaction_request:
            T.any(
              Privy::UnsignedStandardEthereumTransaction::OrHash,
              Privy::UnsignedTempoTransaction::OrHash
            ),
          user_operation_hash: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:1').
        caip2:,
        hash_:,
        reference_id: nil,
        transaction_id: nil,
        # An unsigned Ethereum transaction object. Supports standard EVM transaction types
        # (0, 1, 2, 4) and Tempo transactions (type 118).
        transaction_request: nil,
        user_operation_hash: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            hash_: String,
            reference_id: T.nilable(String),
            transaction_id: String,
            transaction_request: Privy::UnsignedEthereumTransaction::Variants,
            user_operation_hash: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
