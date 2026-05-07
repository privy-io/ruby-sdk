# typed: strong

module Privy
  module Models
    class SparkTransferLeaf < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SparkTransferLeaf, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :intermediate_refund_tx

      sig { returns(String) }
      attr_accessor :secret_cipher

      sig { returns(String) }
      attr_accessor :signature

      # A Spark wallet leaf node.
      sig { returns(T.nilable(Privy::SparkWalletLeaf)) }
      attr_reader :leaf

      sig { params(leaf: Privy::SparkWalletLeaf::OrHash).void }
      attr_writer :leaf

      # A Spark transfer leaf.
      sig do
        params(
          intermediate_refund_tx: String,
          secret_cipher: String,
          signature: String,
          leaf: Privy::SparkWalletLeaf::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        intermediate_refund_tx:,
        secret_cipher:,
        signature:,
        # A Spark wallet leaf node.
        leaf: nil
      )
      end

      sig do
        override.returns(
          {
            intermediate_refund_tx: String,
            secret_cipher: String,
            signature: String,
            leaf: Privy::SparkWalletLeaf
          }
        )
      end
      def to_hash
      end
    end
  end
end
