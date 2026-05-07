# typed: strong

module Privy
  module Models
    class SwapQuoteDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SwapQuoteDestination, Privy::Internal::AnyHash)
        end

      # Token contract address to buy, or "native" for the chain's native token.
      sig { returns(String) }
      attr_accessor :asset_address

      # CAIP-2 chain identifier for the destination. Must match source chain —
      # cross-chain swaps are not yet supported. Defaults to source chain if omitted.
      sig { returns(T.nilable(String)) }
      attr_reader :caip2

      sig { params(caip2: String).void }
      attr_writer :caip2

      # The output side of a swap quote request.
      sig do
        params(asset_address: String, caip2: String).returns(T.attached_class)
      end
      def self.new(
        # Token contract address to buy, or "native" for the chain's native token.
        asset_address:,
        # CAIP-2 chain identifier for the destination. Must match source chain —
        # cross-chain swaps are not yet supported. Defaults to source chain if omitted.
        caip2: nil
      )
      end

      sig { override.returns({ asset_address: String, caip2: String }) }
      def to_hash
      end
    end
  end
end
