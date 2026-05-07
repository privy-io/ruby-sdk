# typed: strong

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkSignMessageWithIdentityKeyRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :signature

      # Data returned by the Spark `signMessageWithIdentityKey` RPC.
      sig { params(signature: String).returns(T.attached_class) }
      def self.new(signature:)
      end

      sig { override.returns({ signature: String }) }
      def to_hash
      end
    end
  end
end
