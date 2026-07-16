# typed: strong

module Privy
  module Models
    class EthereumYieldClaimInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EthereumYieldClaimInput, Privy::Internal::AnyHash)
        end

      # An EVM CAIP-2 chain identifier (e.g., "eip155:4217" for Tempo, "eip155:8453" for
      # Base).
      sig { returns(String) }
      attr_accessor :caip2

      # Input for claiming incentive rewards from vault participation.
      sig { params(caip2: String).returns(T.attached_class) }
      def self.new(
        # An EVM CAIP-2 chain identifier (e.g., "eip155:4217" for Tempo, "eip155:8453" for
        # Base).
        caip2:
      )
      end

      sig { override.returns({ caip2: String }) }
      def to_hash
      end
    end
  end
end
