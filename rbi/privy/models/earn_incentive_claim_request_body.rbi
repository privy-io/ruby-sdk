# typed: strong

module Privy
  module Models
    class EarnIncentiveClaimRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EarnIncentiveClaimRequestBody, Privy::Internal::AnyHash)
        end

      # The blockchain network on which to perform the incentive claim. Supported chains
      # include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and more, along
      # with their respective testnets.
      sig { returns(String) }
      attr_accessor :chain

      # Input for claiming incentive rewards.
      sig { params(chain: String).returns(T.attached_class) }
      def self.new(
        # The blockchain network on which to perform the incentive claim. Supported chains
        # include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and more, along
        # with their respective testnets.
        chain:
      )
      end

      sig { override.returns({ chain: String }) }
      def to_hash
      end
    end
  end
end
