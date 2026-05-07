# typed: strong

module Privy
  module Models
    class SparkSignMessageWithIdentityKeyRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkSignMessageWithIdentityKeyRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :message

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :compact

      sig { params(compact: T::Boolean).void }
      attr_writer :compact

      # Parameters for the Spark `signMessageWithIdentityKey` RPC.
      sig do
        params(message: String, compact: T::Boolean).returns(T.attached_class)
      end
      def self.new(message:, compact: nil)
      end

      sig { override.returns({ message: String, compact: T::Boolean }) }
      def to_hash
      end
    end
  end
end
