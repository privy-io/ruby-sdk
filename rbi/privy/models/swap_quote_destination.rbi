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

      # CAIP-2 chain identifier for the destination. Defaults to source chain if
      # omitted. Will result in a cross-chain swap if source and destination chains
      # differ.
      sig { returns(T.nilable(String)) }
      attr_reader :caip2

      sig { params(caip2: String).void }
      attr_writer :caip2

      # Address to receive the output tokens. Defaults to the swapping wallet address.
      # Required when swapping between chains with different address types (e.g. EVM to
      # Solana).
      sig { returns(T.nilable(String)) }
      attr_reader :destination_address

      sig { params(destination_address: String).void }
      attr_writer :destination_address

      # The output side of a swap quote request.
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
        # omitted. Will result in a cross-chain swap if source and destination chains
        # differ.
        caip2: nil,
        # Address to receive the output tokens. Defaults to the swapping wallet address.
        # Required when swapping between chains with different address types (e.g. EVM to
        # Solana).
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
