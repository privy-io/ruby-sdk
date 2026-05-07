# typed: strong

module Privy
  module Models
    class SparkTransferTokensRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkTransferTokensRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      # Data returned by the Spark `transferTokens` RPC.
      sig { params(id: String).returns(T.attached_class) }
      def self.new(id:)
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
