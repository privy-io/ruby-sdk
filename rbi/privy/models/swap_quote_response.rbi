# typed: strong

module Privy
  module Models
    class SwapQuoteResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SwapQuoteResponse, Privy::Internal::AnyHash)
        end

      # Chain identifier.
      sig { returns(String) }
      attr_accessor :caip2

      # Estimated amount of output token in base units.
      sig { returns(String) }
      attr_accessor :est_output_amount

      # Estimated gas cost in base units of the native token. @deprecated For
      # cross-chain swaps, use estimated_gas instead.
      sig { returns(String) }
      attr_accessor :gas_estimate

      # Amount of input token in base units.
      sig { returns(String) }
      attr_accessor :input_amount

      # Token address being sold.
      sig { returns(String) }
      attr_accessor :input_token

      # Minimum output amount accounting for slippage, in base units.
      sig { returns(String) }
      attr_accessor :minimum_output_amount

      # Token address being bought.
      sig { returns(String) }
      attr_accessor :output_token

      # Destination chain CAIP-2 identifier for cross-chain swaps. Only present for
      # cross-chain swaps.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_caip2

      sig { params(destination_caip2: String).void }
      attr_writer :destination_caip2

      # Estimated fees for the swap. Only present for cross-chain swaps.
      sig { returns(T.nilable(T::Array[Privy::FeeLineItem::Variants])) }
      attr_reader :estimated_fees

      sig do
        params(
          estimated_fees:
            T::Array[
              T.any(
                Privy::RelayerFee::OrHash,
                Privy::PrivyFee::OrHash,
                Privy::DeveloperFee::OrHash
              )
            ]
        ).void
      end
      attr_writer :estimated_fees

      # Gas cost for a blockchain action. Includes both raw base-unit amount and a
      # human-readable decimal string, plus the gas token symbol.
      sig { returns(T.nilable(Privy::Gas)) }
      attr_reader :estimated_gas

      sig { params(estimated_gas: Privy::Gas::OrHash).void }
      attr_writer :estimated_gas

      # Quote expiry as Unix timestamp (seconds). Only present for cross-chain quotes.
      sig { returns(T.nilable(Float)) }
      attr_reader :expires_at

      sig { params(expires_at: Float).void }
      attr_writer :expires_at

      # Pricing data for a token swap.
      sig do
        params(
          caip2: String,
          est_output_amount: String,
          gas_estimate: String,
          input_amount: String,
          input_token: String,
          minimum_output_amount: String,
          output_token: String,
          destination_caip2: String,
          estimated_fees:
            T::Array[
              T.any(
                Privy::RelayerFee::OrHash,
                Privy::PrivyFee::OrHash,
                Privy::DeveloperFee::OrHash
              )
            ],
          estimated_gas: Privy::Gas::OrHash,
          expires_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Chain identifier.
        caip2:,
        # Estimated amount of output token in base units.
        est_output_amount:,
        # Estimated gas cost in base units of the native token. @deprecated For
        # cross-chain swaps, use estimated_gas instead.
        gas_estimate:,
        # Amount of input token in base units.
        input_amount:,
        # Token address being sold.
        input_token:,
        # Minimum output amount accounting for slippage, in base units.
        minimum_output_amount:,
        # Token address being bought.
        output_token:,
        # Destination chain CAIP-2 identifier for cross-chain swaps. Only present for
        # cross-chain swaps.
        destination_caip2: nil,
        # Estimated fees for the swap. Only present for cross-chain swaps.
        estimated_fees: nil,
        # Gas cost for a blockchain action. Includes both raw base-unit amount and a
        # human-readable decimal string, plus the gas token symbol.
        estimated_gas: nil,
        # Quote expiry as Unix timestamp (seconds). Only present for cross-chain quotes.
        expires_at: nil
      )
      end

      sig do
        override.returns(
          {
            caip2: String,
            est_output_amount: String,
            gas_estimate: String,
            input_amount: String,
            input_token: String,
            minimum_output_amount: String,
            output_token: String,
            destination_caip2: String,
            estimated_fees: T::Array[Privy::FeeLineItem::Variants],
            estimated_gas: Privy::Gas,
            expires_at: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
