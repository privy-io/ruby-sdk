# typed: strong

module Privy
  module Models
    class DepositAccountCryptoQuoteResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::DepositAccountCryptoQuoteResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(Time) }
      attr_accessor :created_at

      # Estimated output amount as a decimal string in the destination token's standard
      # unit. Not in the smallest on-chain unit.
      sig { returns(String) }
      attr_accessor :estimated_output_amount

      # Quoted input amount as a decimal string in the source token's standard unit
      # (e.g. "0.02" for 0.02 ETH). Not in the smallest on-chain unit.
      sig { returns(String) }
      attr_accessor :input_amount

      # An indicative crypto deposit-account quote. Amounts are in token standard units.
      sig do
        params(
          created_at: Time,
          estimated_output_amount: String,
          input_amount: String
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        # Estimated output amount as a decimal string in the destination token's standard
        # unit. Not in the smallest on-chain unit.
        estimated_output_amount:,
        # Quoted input amount as a decimal string in the source token's standard unit
        # (e.g. "0.02" for 0.02 ETH). Not in the smallest on-chain unit.
        input_amount:
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            estimated_output_amount: String,
            input_amount: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
