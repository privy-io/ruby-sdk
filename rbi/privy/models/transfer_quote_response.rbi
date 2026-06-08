# typed: strong

module Privy
  module Models
    class TransferQuoteResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferQuoteResponse, Privy::Internal::AnyHash)
        end

      # The destination address for a token transfer. Optionally specify a different
      # asset or chain for cross-asset or cross-chain transfers.
      sig { returns(Privy::TokenTransferDestination) }
      attr_reader :destination

      sig { params(destination: Privy::TokenTransferDestination::OrHash).void }
      attr_writer :destination

      # Estimated output amount in decimals
      sig { returns(String) }
      attr_accessor :estimated_output_amount

      # Quote expiry as Unix timestamp (seconds).
      sig { returns(Float) }
      attr_accessor :expires_at

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

      # Whether the amount refers to the input token or output token.
      sig { returns(T.nilable(Privy::AmountType::OrSymbol)) }
      attr_reader :amount_type

      sig { params(amount_type: Privy::AmountType::OrSymbol).void }
      attr_writer :amount_type

      # Estimated fees in USD for the transfer. Only present for cross-chain transfers.
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(Privy::RelayerFee, Privy::PrivyFee, Privy::DeveloperFee)
            ]
          )
        )
      end
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

      # Response containing a quote for a cross-asset or cross-chain (DADC) transfer.
      sig do
        params(
          destination: Privy::TokenTransferDestination::OrHash,
          estimated_output_amount: String,
          expires_at: Float,
          source:
            T.any(
              Privy::NamedTokenTransferSource::OrHash,
              Privy::CustomTokenTransferSource::OrHash
            ),
          amount_type: Privy::AmountType::OrSymbol,
          estimated_fees:
            T::Array[
              T.any(
                Privy::RelayerFee::OrHash,
                Privy::PrivyFee::OrHash,
                Privy::DeveloperFee::OrHash
              )
            ],
          estimated_gas: Privy::Gas::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The destination address for a token transfer. Optionally specify a different
        # asset or chain for cross-asset or cross-chain transfers.
        destination:,
        # Estimated output amount in decimals
        estimated_output_amount:,
        # Quote expiry as Unix timestamp (seconds).
        expires_at:,
        # The source asset, amount, and chain for a token transfer. Specify either `asset`
        # (named) or `asset_address` (custom), not both.
        source:,
        # Whether the amount refers to the input token or output token.
        amount_type: nil,
        # Estimated fees in USD for the transfer. Only present for cross-chain transfers.
        estimated_fees: nil,
        # Gas cost for a blockchain action. Includes both raw base-unit amount and a
        # human-readable decimal string, plus the gas token symbol.
        estimated_gas: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::TokenTransferDestination,
            estimated_output_amount: String,
            expires_at: Float,
            source:
              T.any(
                Privy::NamedTokenTransferSource,
                Privy::CustomTokenTransferSource
              ),
            amount_type: Privy::AmountType::OrSymbol,
            estimated_fees:
              T::Array[
                T.any(Privy::RelayerFee, Privy::PrivyFee, Privy::DeveloperFee)
              ],
            estimated_gas: Privy::Gas
          }
        )
      end
      def to_hash
      end
    end
  end
end
