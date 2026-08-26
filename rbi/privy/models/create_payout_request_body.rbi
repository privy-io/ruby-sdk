# typed: strong

module Privy
  module Models
    class CreatePayoutRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreatePayoutRequestBody, Privy::Internal::AnyHash)
        end

      # The destination bank account for a payout.
      sig { returns(Privy::PayoutDestination) }
      attr_reader :destination

      sig { params(destination: Privy::PayoutDestination::OrHash).void }
      attr_writer :destination

      # The source crypto asset, chain, and amount for a payout.
      sig { returns(Privy::PayoutSource) }
      attr_reader :source

      sig { params(source: Privy::PayoutSource::OrHash).void }
      attr_writer :source

      # Request body for initiating a payout (crypto to fiat offramp) from a wallet.
      sig do
        params(
          destination: Privy::PayoutDestination::OrHash,
          source: Privy::PayoutSource::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The destination bank account for a payout.
        destination:,
        # The source crypto asset, chain, and amount for a payout.
        source:
      )
      end

      sig do
        override.returns(
          { destination: Privy::PayoutDestination, source: Privy::PayoutSource }
        )
      end
      def to_hash
      end
    end
  end
end
