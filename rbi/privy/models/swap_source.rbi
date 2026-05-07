# typed: strong

module Privy
  module Models
    class SwapSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SwapSource, Privy::Internal::AnyHash) }

      # Token contract address to sell, or "native" for the chain's native token.
      sig { returns(String) }
      attr_accessor :asset_address

      # CAIP-2 chain identifier (e.g., "eip155:1").
      sig { returns(String) }
      attr_accessor :caip2

      # The input side of a swap request, including token and chain.
      sig do
        params(asset_address: String, caip2: String).returns(T.attached_class)
      end
      def self.new(
        # Token contract address to sell, or "native" for the chain's native token.
        asset_address:,
        # CAIP-2 chain identifier (e.g., "eip155:1").
        caip2:
      )
      end

      sig { override.returns({ asset_address: String, caip2: String }) }
      def to_hash
      end
    end
  end
end
