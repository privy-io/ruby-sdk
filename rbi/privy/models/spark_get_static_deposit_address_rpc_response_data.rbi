# typed: strong

module Privy
  module Models
    class SparkGetStaticDepositAddressRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkGetStaticDepositAddressRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :address

      # Data returned by the Spark `getStaticDepositAddress` RPC.
      sig { params(address: String).returns(T.attached_class) }
      def self.new(address:)
      end

      sig { override.returns({ address: String }) }
      def to_hash
      end
    end
  end
end
