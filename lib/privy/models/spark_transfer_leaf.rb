# frozen_string_literal: true

module Privy
  module Models
    class SparkTransferLeaf < Privy::Internal::Type::BaseModel
      # @!attribute intermediate_refund_tx
      #
      #   @return [String]
      required :intermediate_refund_tx, String

      # @!attribute secret_cipher
      #
      #   @return [String]
      required :secret_cipher, String

      # @!attribute signature
      #
      #   @return [String]
      required :signature, String

      # @!attribute leaf
      #   A Spark wallet leaf node.
      #
      #   @return [Privy::Models::SparkWalletLeaf, nil]
      optional :leaf, -> { Privy::SparkWalletLeaf }

      # @!method initialize(intermediate_refund_tx:, secret_cipher:, signature:, leaf: nil)
      #   A Spark transfer leaf.
      #
      #   @param intermediate_refund_tx [String]
      #
      #   @param secret_cipher [String]
      #
      #   @param signature [String]
      #
      #   @param leaf [Privy::Models::SparkWalletLeaf] A Spark wallet leaf node.
    end
  end
end
