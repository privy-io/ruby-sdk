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

      # A developer fee as a percentage string from 0 up to (not including) 100, e.g.
      # "1.5" for 1.5%.
      sig { returns(T.nilable(String)) }
      attr_reader :developer_fee_percent

      sig { params(developer_fee_percent: String).void }
      attr_writer :developer_fee_percent

      # Travel rule information about who receives a payout.
      sig { returns(T.nilable(Privy::PayoutTravelRule)) }
      attr_reader :travel_rule

      sig { params(travel_rule: Privy::PayoutTravelRule::OrHash).void }
      attr_writer :travel_rule

      # Request body for initiating a payout (crypto to fiat offramp) from a wallet.
      sig do
        params(
          destination: Privy::PayoutDestination::OrHash,
          source: Privy::PayoutSource::OrHash,
          developer_fee_percent: String,
          travel_rule: Privy::PayoutTravelRule::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The destination bank account for a payout.
        destination:,
        # The source crypto asset, chain, and amount for a payout.
        source:,
        # A developer fee as a percentage string from 0 up to (not including) 100, e.g.
        # "1.5" for 1.5%.
        developer_fee_percent: nil,
        # Travel rule information about who receives a payout.
        travel_rule: nil
      )
      end

      sig do
        override.returns(
          {
            destination: Privy::PayoutDestination,
            source: Privy::PayoutSource,
            developer_fee_percent: String,
            travel_rule: Privy::PayoutTravelRule
          }
        )
      end
      def to_hash
      end
    end
  end
end
