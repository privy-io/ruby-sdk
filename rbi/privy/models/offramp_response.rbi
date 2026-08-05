# typed: strong

module Privy
  module Models
    class OfframpResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::OfframpResponse, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # Deposit instructions for an offramp transfer.
      sig { returns(Privy::OfframpDepositInstructions) }
      attr_reader :deposit_instructions

      sig do
        params(
          deposit_instructions: Privy::OfframpDepositInstructions::OrHash
        ).void
      end
      attr_writer :deposit_instructions

      # Status of an onramp or offramp transfer.
      sig { returns(Privy::OnrampTransferStatus::OrSymbol) }
      attr_accessor :status

      # Response for an offramp transfer initiation.
      sig do
        params(
          id: String,
          deposit_instructions: Privy::OfframpDepositInstructions::OrHash,
          status: Privy::OnrampTransferStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Deposit instructions for an offramp transfer.
        deposit_instructions:,
        # Status of an onramp or offramp transfer.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            deposit_instructions: Privy::OfframpDepositInstructions,
            status: Privy::OnrampTransferStatus::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
