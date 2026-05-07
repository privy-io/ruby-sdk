# typed: strong

module Privy
  module Models
    class CoinbaseOnRampStatusResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CoinbaseOnRampStatusResponse, Privy::Internal::AnyHash)
        end

      # Status of a Coinbase on-ramp session.
      sig { returns(Privy::CoinbaseOnRampStatus::OrSymbol) }
      attr_accessor :status

      # The response for getting the status of a Coinbase on-ramp session.
      sig do
        params(status: Privy::CoinbaseOnRampStatus::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # Status of a Coinbase on-ramp session.
        status:
      )
      end

      sig do
        override.returns({ status: Privy::CoinbaseOnRampStatus::OrSymbol })
      end
      def to_hash
      end
    end
  end
end
