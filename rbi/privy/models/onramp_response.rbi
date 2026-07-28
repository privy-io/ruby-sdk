# typed: strong

module Privy
  module Models
    class OnrampResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::OnrampResponse, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      # Bank deposit instructions for an onramp transfer.
      sig { returns(Privy::OnrampDepositInstructions) }
      attr_reader :deposit_instructions

      sig do
        params(
          deposit_instructions: Privy::OnrampDepositInstructions::OrHash
        ).void
      end
      attr_writer :deposit_instructions

      # Status of an onramp or offramp transfer.
      sig { returns(Privy::OnrampTransferStatus::OrSymbol) }
      attr_accessor :status

      # Response for an onramp transfer initiation.
      sig do
        params(
          id: String,
          deposit_instructions: Privy::OnrampDepositInstructions::OrHash,
          status: Privy::OnrampTransferStatus::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        # Bank deposit instructions for an onramp transfer.
        deposit_instructions:,
        # Status of an onramp or offramp transfer.
        status:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            deposit_instructions: Privy::OnrampDepositInstructions,
            status: Privy::OnrampTransferStatus::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
