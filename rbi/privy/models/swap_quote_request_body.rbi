# typed: strong

module Privy
  module Models
    class SwapQuoteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SwapQuoteRequestBody, Privy::Internal::AnyHash)
        end

      # Amount in base units (e.g., wei for ETH). Must be a non-negative integer string.
      sig { returns(String) }
      attr_accessor :base_amount

      # The output side of a swap quote request.
      sig { returns(Privy::SwapQuoteDestination) }
      attr_reader :destination

      sig { params(destination: Privy::SwapQuoteDestination::OrHash).void }
      attr_writer :destination

      # The input side of a swap request, including token and chain.
      sig { returns(Privy::SwapSource) }
      attr_reader :source

      sig { params(source: Privy::SwapSource::OrHash).void }
      attr_writer :source

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

      # Maximum slippage tolerance in basis points (e.g., 50 for 0.5%). If omitted,
      # auto-slippage is used.
      sig { returns(T.nilable(Float)) }
      attr_reader :slippage_bps

      sig { params(slippage_bps: Float).void }
      attr_writer :slippage_bps

      # Input for requesting a token swap quote.
      sig do
        params(
          base_amount: String,
          destination: Privy::SwapQuoteDestination::OrHash,
          source: Privy::SwapSource::OrHash,
          amount_type: Privy::AmountType::OrSymbol,
          fee_configuration: Privy::FeeConfiguration::OrHash,
          slippage_bps: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount in base units (e.g., wei for ETH). Must be a non-negative integer string.
        base_amount:,
        # The output side of a swap quote request.
        destination:,
        # The input side of a swap request, including token and chain.
        source:,
        # Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Total fees assessed on a transfer, in BPS
        fee_configuration: nil,
        # Maximum slippage tolerance in basis points (e.g., 50 for 0.5%). If omitted,
        # auto-slippage is used.
        slippage_bps: nil
      )
      end

      sig do
        override.returns(
          {
            base_amount: String,
            destination: Privy::SwapQuoteDestination,
            source: Privy::SwapSource,
            amount_type: Privy::AmountType::OrSymbol,
            fee_configuration: Privy::FeeConfiguration,
            slippage_bps: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
