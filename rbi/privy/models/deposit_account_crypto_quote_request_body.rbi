# typed: strong

module Privy
  module Models
    class DepositAccountCryptoQuoteRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::DepositAccountCryptoQuoteRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # An asset and chain for an indicative crypto deposit-account quote.
      sig { returns(Privy::DepositAccountCryptoQuoteAsset) }
      attr_reader :destination

      sig do
        params(destination: Privy::DepositAccountCryptoQuoteAsset::OrHash).void
      end
      attr_writer :destination

      # An asset and chain for an indicative crypto deposit-account quote.
      sig { returns(Privy::DepositAccountCryptoQuoteAsset) }
      attr_reader :source

      sig { params(source: Privy::DepositAccountCryptoQuoteAsset::OrHash).void }
      attr_writer :source

      # A positive decimal amount in the source token’s standard unit, not its smallest
      # on-chain unit.
      sig { returns(T.nilable(String)) }
      attr_reader :input_amount

      sig { params(input_amount: String).void }
      attr_writer :input_amount

      # Value in basis points: integer from 0 to 10000 (0% to 100%).
      sig { returns(T.nilable(Integer)) }
      attr_reader :slippage_bps

      sig { params(slippage_bps: Integer).void }
      attr_writer :slippage_bps

      # Request body for an indicative crypto deposit-account route quote.
      sig do
        params(
          destination: Privy::DepositAccountCryptoQuoteAsset::OrHash,
          source: Privy::DepositAccountCryptoQuoteAsset::OrHash,
          input_amount: String,
          slippage_bps: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # An asset and chain for an indicative crypto deposit-account quote.
        destination:,
        # An asset and chain for an indicative crypto deposit-account quote.
        source:,
        # A positive decimal amount in the source token’s standard unit, not its smallest
        # on-chain unit.
        input_amount: nil,
        # Value in basis points: integer from 0 to 10000 (0% to 100%).
        slippage_bps: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::DepositAccountCryptoQuoteAsset,
            source: Privy::DepositAccountCryptoQuoteAsset,
            input_amount: String,
            slippage_bps: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
