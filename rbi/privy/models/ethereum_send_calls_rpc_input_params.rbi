# typed: strong

module Privy
  module Models
    class EthereumSendCallsRpcInputParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::EthereumSendCallsRpcInputParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T::Array[Privy::EthereumSendCallsCall]) }
      attr_accessor :calls

      # Parameters for the `wallet_sendCalls` RPC.
      sig do
        params(calls: T::Array[Privy::EthereumSendCallsCall::OrHash]).returns(
          T.attached_class
        )
      end
      def self.new(calls:)
      end

      sig do
        override.returns({ calls: T::Array[Privy::EthereumSendCallsCall] })
      end
      def to_hash
      end
    end
  end
end
