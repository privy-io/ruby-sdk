# typed: strong

module Privy
  module Models
    class SparkWalletLeaf < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SparkWalletLeaf, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # The Spark network.
      sig { returns(Privy::SparkNetwork::TaggedSymbol) }
      attr_accessor :network

      sig { returns(String) }
      attr_accessor :node_tx

      sig { returns(String) }
      attr_accessor :owner_identity_public_key

      sig { returns(String) }
      attr_accessor :refund_tx

      sig { returns(String) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :tree_id

      sig { returns(Float) }
      attr_accessor :value

      sig { returns(String) }
      attr_accessor :verifying_public_key

      sig { returns(Float) }
      attr_accessor :vout

      sig { returns(T.nilable(String)) }
      attr_reader :parent_node_id

      sig { params(parent_node_id: String).void }
      attr_writer :parent_node_id

      # A Spark signing keyshare.
      sig { returns(T.nilable(Privy::SparkSigningKeyshare)) }
      attr_reader :signing_keyshare

      sig { params(signing_keyshare: Privy::SparkSigningKeyshare::OrHash).void }
      attr_writer :signing_keyshare

      # A Spark wallet leaf node.
      sig do
        params(
          id: String,
          network: Privy::SparkNetwork::OrSymbol,
          node_tx: String,
          owner_identity_public_key: String,
          refund_tx: String,
          status: String,
          tree_id: String,
          value: Float,
          verifying_public_key: String,
          vout: Float,
          parent_node_id: String,
          signing_keyshare: Privy::SparkSigningKeyshare::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # The Spark network.
        network:,
        node_tx:,
        owner_identity_public_key:,
        refund_tx:,
        status:,
        tree_id:,
        value:,
        verifying_public_key:,
        vout:,
        parent_node_id: nil,
        # A Spark signing keyshare.
        signing_keyshare: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            network: Privy::SparkNetwork::TaggedSymbol,
            node_tx: String,
            owner_identity_public_key: String,
            refund_tx: String,
            status: String,
            tree_id: String,
            value: Float,
            verifying_public_key: String,
            vout: Float,
            parent_node_id: String,
            signing_keyshare: Privy::SparkSigningKeyshare
          }
        )
      end
      def to_hash
      end
    end
  end
end
