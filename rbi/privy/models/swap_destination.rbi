# typed: strong

module Privy
  module Models
    class SwapDestination < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SwapDestination, Privy::Internal::AnyHash) }

      # Token contract address to buy, or "native" for the chain's native token.
      sig { returns(String) }
      attr_accessor :asset_address

      # CAIP-2 chain identifier for the destination. Defaults to source chain if
      # omitted. Specify a different chain for cross-chain swaps.
      sig { returns(T.nilable(String)) }
      attr_reader :caip2

      sig { params(caip2: String).void }
      attr_writer :caip2

      # Address to receive the output tokens. Defaults to the swapping wallet address.
      # Required when swapping between different chain types (e.g. EVM to Solana).
      sig { returns(T.nilable(String)) }
      attr_reader :destination_address

      sig { params(destination_address: String).void }
      attr_writer :destination_address

      # The output side of a swap execution request.
      sig do
        params(
          asset_address: String,
          caip2: String,
          destination_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Token contract address to buy, or "native" for the chain's native token.
        asset_address:,
        # CAIP-2 chain identifier for the destination. Defaults to source chain if
        # omitted. Specify a different chain for cross-chain swaps.
        caip2: nil,
        # Address to receive the output tokens. Defaults to the swapping wallet address.
        # Required when swapping between different chain types (e.g. EVM to Solana).
        destination_address: nil
      )
      end

      sig do
        override.returns(
          { asset_address: String, caip2: String, destination_address: String }
        )
      end
      def to_hash
      end
    end
  end
end
