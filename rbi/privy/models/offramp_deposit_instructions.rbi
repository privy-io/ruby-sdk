# typed: strong

module Privy
  module Models
    class OfframpDepositInstructions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OfframpDepositInstructions, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :amount

      # Supported blockchain chains for onramp and offramp.
      sig { returns(Privy::OnrampChain::OrSymbol) }
      attr_accessor :chain

      # Supported crypto assets for onramp and offramp.
      sig { returns(Privy::OnrampAsset::OrSymbol) }
      attr_accessor :currency

      sig { returns(String) }
      attr_accessor :from_address

      sig { returns(String) }
      attr_accessor :to_address

      # Deposit instructions for an offramp transfer.
      sig do
        params(
          amount: String,
          chain: Privy::OnrampChain::OrSymbol,
          currency: Privy::OnrampAsset::OrSymbol,
          from_address: String,
          to_address: String
        ).returns(T.attached_class)
      end
      def self.new(
        amount:,
        # Supported blockchain chains for onramp and offramp.
        chain:,
        # Supported crypto assets for onramp and offramp.
        currency:,
        from_address:,
        to_address:
      )
      end

      sig do
        override.returns(
          {
            amount: String,
            chain: Privy::OnrampChain::OrSymbol,
            currency: Privy::OnrampAsset::OrSymbol,
            from_address: String,
            to_address: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
