# typed: strong

module Privy
  module Models
    class RpcSponsorOptions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RpcSponsorOptions, Privy::Internal::AnyHash)
        end

      # Token asset identifier for user-pays gas sponsorship. Common values: 'usdc',
      # 'usdt', 'eurc', 'usdg', 'usdc_e'. Available tokens vary by chain.
      sig { returns(String) }
      attr_accessor :asset

      # Options for user-pays gas sponsorship on the RPC endpoint. When provided
      # alongside `sponsor: true`, controls which token asset the user pays gas with.
      sig { params(asset: String).returns(T.attached_class) }
      def self.new(
        # Token asset identifier for user-pays gas sponsorship. Common values: 'usdc',
        # 'usdt', 'eurc', 'usdg', 'usdc_e'. Available tokens vary by chain.
        asset:
      )
      end

      sig { override.returns({ asset: String }) }
      def to_hash
      end
    end
  end
end
