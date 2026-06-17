# typed: strong

module Privy
  module Models
    class TransferQuoteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferQuoteRequestBody, Privy::Internal::AnyHash)
        end

      # The destination address for a token transfer. Optionally specify a different
      # asset or chain for cross-asset or cross-chain transfers.
      sig { returns(Privy::TokenTransferDestination) }
      attr_reader :destination

      sig { params(destination: Privy::TokenTransferDestination::OrHash).void }
      attr_writer :destination

      # The source asset, amount, and chain for a token transfer. Specify either `asset`
      # (named) or `asset_address` (custom), not both.
      sig do
        returns(
          T.any(
            Privy::NamedTokenTransferSource,
            Privy::CustomTokenTransferSource
          )
        )
      end
      attr_accessor :source

      # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
      # USDC). For exact_input, the amount to send. For exact_output, the exact amount
      # to receive. Takes precedence over source.amount when both are provided.
      sig { returns(T.nilable(String)) }
      attr_reader :amount

      sig { params(amount: String).void }
      attr_writer :amount

      # Whether the amount refers to the input token or output token.
      sig { returns(T.nilable(Privy::AmountType::OrSymbol)) }
      attr_reader :amount_type

      sig { params(amount_type: Privy::AmountType::OrSymbol).void }
      attr_writer :amount_type

      # Total fees assessed on a transfer, in BPS
      sig { returns(T.nilable(Privy::FeeConfiguration)) }
      attr_reader :fee_configuration

      sig { params(fee_configuration: Privy::FeeConfiguration::OrHash).void }
      attr_writer :fee_configuration

      # Maximum allowed slippage in basis points (1 bps = 0.01%). Only applicable for
      # cross-chain or cross-asset transfers; omit to use the provider default.
      sig { returns(T.nilable(Integer)) }
      attr_reader :slippage_bps

      sig { params(slippage_bps: Integer).void }
      attr_writer :slippage_bps

      # Request body for requesting a quote for a cross-asset or cross-chain (DADC)
      # transfer.
      sig do
        params(
          destination: Privy::TokenTransferDestination::OrHash,
          source:
            T.any(
              Privy::NamedTokenTransferSource::OrHash,
              Privy::CustomTokenTransferSource::OrHash
            ),
          amount: String,
          amount_type: Privy::AmountType::OrSymbol,
          fee_configuration: Privy::FeeConfiguration::OrHash,
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
        # Amount as a decimal string in the token's standard unit (e.g. "1.5" for 1.5
        # USDC). For exact_input, the amount to send. For exact_output, the exact amount
        # to receive. Takes precedence over source.amount when both are provided.
        amount: nil,
        # Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Total fees assessed on a transfer, in BPS
        fee_configuration: nil,
        # Maximum allowed slippage in basis points (1 bps = 0.01%). Only applicable for
        # cross-chain or cross-asset transfers; omit to use the provider default.
        slippage_bps: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::TokenTransferDestination,
            source:
              T.any(
                Privy::NamedTokenTransferSource,
                Privy::CustomTokenTransferSource
              ),
            amount: String,
            amount_type: Privy::AmountType::OrSymbol,
            fee_configuration: Privy::FeeConfiguration,
            slippage_bps: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
