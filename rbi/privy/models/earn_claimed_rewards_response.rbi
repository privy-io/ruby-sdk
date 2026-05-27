# typed: strong

module Privy
  module Models
    class EarnClaimedRewardsResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EarnClaimedRewardsResponse, Privy::Internal::AnyHash)
        end

      # Rewards claimed through Privy, aggregated by token across all successful
      # incentive claims.
      sig { returns(T::Array[Privy::EarnIncetiveClaimRewardEntry]) }
      attr_accessor :claimed_rewards

      # All incentive rewards claimed by a wallet, aggregated by token.
      sig do
        params(
          claimed_rewards: T::Array[Privy::EarnIncetiveClaimRewardEntry::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # Rewards claimed through Privy, aggregated by token across all successful
        # incentive claims.
        claimed_rewards:
      )
      end

      sig do
        override.returns(
          { claimed_rewards: T::Array[Privy::EarnIncetiveClaimRewardEntry] }
        )
      end
      def to_hash
      end
    end
  end
end
