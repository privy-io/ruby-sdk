# typed: strong

module Privy
  module Models
    class SparkClaimStaticDepositRpcResponseData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::SparkClaimStaticDepositRpcResponseData,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :transfer_id

      # Data returned by the Spark `claimStaticDeposit` RPC.
      sig { params(transfer_id: String).returns(T.attached_class) }
      def self.new(transfer_id:)
      end

      sig { override.returns({ transfer_id: String }) }
      def to_hash
      end
    end
  end
end
