# typed: strong

module Privy
  module Models
    class SolanaSignAndSendTransactionRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SolanaSignAndSendTransactionRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
      sig { returns(String) }
      attr_accessor :caip2

      sig { returns(String) }
      attr_accessor :hash_

      sig { returns(T.nilable(String)) }
      attr_accessor :reference_id

      sig { returns(T.nilable(String)) }
      attr_reader :signed_transaction

      sig { params(signed_transaction: String).void }
      attr_writer :signed_transaction

      sig { returns(T.nilable(String)) }
      attr_reader :transaction_id

      sig { params(transaction_id: String).void }
      attr_writer :transaction_id

      # Data returned by the SVM `signAndSendTransaction` RPC.
      sig do
        params(
          caip2: String,
          hash_: String,
          reference_id: T.nilable(String),
          signed_transaction: String,
          transaction_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A valid CAIP-2 chain ID (e.g. 'eip155:4217' for Tempo, 'eip155:1' for Ethereum).
        caip2:,
        hash_:,
        reference_id: nil,
        signed_transaction: nil,
        transaction_id: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            hash_: String,
            reference_id: T.nilable(String),
            signed_transaction: String,
            transaction_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
