# frozen_string_literal: true

module Privy
  module Models
    class SparkWalletLeaf < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute network
      #   The Spark network.
      #
      #   @return [Symbol, Privy::Models::SparkNetwork]
      required :network, enum: -> { Privy::SparkNetwork }

      # @!attribute node_tx
      #
      #   @return [String]
      required :node_tx, String

      # @!attribute owner_identity_public_key
      #
      #   @return [String]
      required :owner_identity_public_key, String

      # @!attribute refund_tx
      #
      #   @return [String]
      required :refund_tx, String

      # @!attribute status
      #
      #   @return [String]
      required :status, String

      # @!attribute tree_id
      #
      #   @return [String]
      required :tree_id, String

      # @!attribute value
      #
      #   @return [Float]
      required :value, Float

      # @!attribute verifying_public_key
      #
      #   @return [String]
      required :verifying_public_key, String

      # @!attribute vout
      #
      #   @return [Float]
      required :vout, Float

      # @!attribute parent_node_id
      #
      #   @return [String, nil]
      optional :parent_node_id, String

      # @!attribute signing_keyshare
      #   A Spark signing keyshare.
      #
      #   @return [Privy::Models::SparkSigningKeyshare, nil]
      optional :signing_keyshare, -> { Privy::SparkSigningKeyshare }

      # @!method initialize(id:, network:, node_tx:, owner_identity_public_key:, refund_tx:, status:, tree_id:, value:, verifying_public_key:, vout:, parent_node_id: nil, signing_keyshare: nil)
      #   A Spark wallet leaf node.
      #
      #   @param id [String]
      #
      #   @param network [Symbol, Privy::Models::SparkNetwork] The Spark network.
      #
      #   @param node_tx [String]
      #
      #   @param owner_identity_public_key [String]
      #
      #   @param refund_tx [String]
      #
      #   @param status [String]
      #
      #   @param tree_id [String]
      #
      #   @param value [Float]
      #
      #   @param verifying_public_key [String]
      #
      #   @param vout [Float]
      #
      #   @param parent_node_id [String]
      #
      #   @param signing_keyshare [Privy::Models::SparkSigningKeyshare] A Spark signing keyshare.
    end
  end
end
