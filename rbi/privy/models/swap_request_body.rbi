# typed: strong

module Privy
  module Models
    class SwapRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SwapRequestBody, Privy::Internal::AnyHash) }

      # Amount in base units (e.g., wei for ETH). Must be a non-negative integer string.
      sig { returns(String) }
      attr_accessor :base_amount

      # The output side of a swap execution request.
      sig { returns(Privy::SwapDestination) }
      attr_reader :destination

      sig { params(destination: Privy::SwapDestination::OrHash).void }
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

      # Unique caller-generated nonce used to prevent replaying a signed wallet action
      # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
      sig { returns(T.nilable(String)) }
      attr_reader :nonce

      sig { params(nonce: String).void }
      attr_writer :nonce

      # Developer-provided identifier for this request. Must be unique per app.
      sig { returns(T.nilable(String)) }
      attr_reader :reference_id

      sig { params(reference_id: String).void }
      attr_writer :reference_id

      # Maximum slippage tolerance in basis points (e.g., 50 for 0.5%).
      sig { returns(T.nilable(Integer)) }
      attr_reader :slippage_bps

      sig { params(slippage_bps: Integer).void }
      attr_writer :slippage_bps

      # Input for executing a token swap.
      sig do
        params(
          base_amount: String,
          destination: Privy::SwapDestination::OrHash,
          source: Privy::SwapSource::OrHash,
          amount_type: Privy::AmountType::OrSymbol,
          fee_configuration: Privy::FeeConfiguration::OrHash,
          nonce: String,
          reference_id: String,
          slippage_bps: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Amount in base units (e.g., wei for ETH). Must be a non-negative integer string.
        base_amount:,
        # The output side of a swap execution request.
        destination:,
        # The input side of a swap request, including token and chain.
        source:,
        # Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Total fees assessed on a transfer, in BPS
        fee_configuration: nil,
        # Unique caller-generated nonce used to prevent replaying a signed wallet action
        # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        nonce: nil,
        # Developer-provided identifier for this request. Must be unique per app.
        reference_id: nil,
        # Maximum slippage tolerance in basis points (e.g., 50 for 0.5%).
        slippage_bps: nil
      )
      end

      sig do
        override.returns(
          {
            base_amount: String,
            destination: Privy::SwapDestination,
            source: Privy::SwapSource,
            amount_type: Privy::AmountType::OrSymbol,
            fee_configuration: Privy::FeeConfiguration,
            nonce: String,
            reference_id: String,
            slippage_bps: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
