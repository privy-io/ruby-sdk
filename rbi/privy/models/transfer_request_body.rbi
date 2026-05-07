# typed: strong

module Privy
  module Models
    class TransferRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferRequestBody, Privy::Internal::AnyHash)
        end

      # The destination address for a token transfer. Optionally specify a different
      # asset or chain for cross-asset or cross-chain transfers.
      sig { returns(Privy::TokenTransferDestination) }
      attr_reader :destination

      sig { params(destination: Privy::TokenTransferDestination::OrHash).void }
      attr_writer :destination

      # The source asset, amount, and chain for a token transfer. Specify either `asset`
      # (named) or `asset_address` (custom), not both.
      sig { returns(Privy::TokenTransferSource::Variants) }
      attr_accessor :source

      # Whether the amount refers to the input token or output token.
      sig { returns(T.nilable(Privy::AmountType::TaggedSymbol)) }
      attr_reader :amount_type

      sig { params(amount_type: Privy::AmountType::OrSymbol).void }
      attr_writer :amount_type

      # Maximum allowed slippage in basis points (1 bps = 0.01%).
      sig { returns(T.nilable(Integer)) }
      attr_reader :slippage_bps

      sig { params(slippage_bps: Integer).void }
      attr_writer :slippage_bps

      # Request body for initiating a sponsored token transfer from an embedded wallet.
      sig do
        params(
          destination: Privy::TokenTransferDestination::OrHash,
          source:
            T.any(
              Privy::NamedTokenTransferSource::OrHash,
              Privy::CustomTokenTransferSource::OrHash
            ),
          amount_type: Privy::AmountType::OrSymbol,
          slippage_bps: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # The destination address for a token transfer. Optionally specify a different
        # asset or chain for cross-asset or cross-chain transfers.
        destination:,
        # The source asset, amount, and chain for a token transfer. Specify either `asset`
        # (named) or `asset_address` (custom), not both.
        source:,
        # Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Maximum allowed slippage in basis points (1 bps = 0.01%).
        slippage_bps: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::TokenTransferDestination,
            source: Privy::TokenTransferSource::Variants,
            amount_type: Privy::AmountType::TaggedSymbol,
            slippage_bps: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
