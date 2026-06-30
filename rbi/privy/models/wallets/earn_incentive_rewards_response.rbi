# typed: strong

module Privy
  module Models
    module Wallets
      class EarnIncentiveRewardsResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnIncentiveRewardsResponse,
              Privy::Internal::AnyHash
            )
          end

        # Reward tokens with their claimed and unclaimed amounts.
        sig { returns(T::Array[Privy::Wallets::EarnIncentiveRewardEntry]) }
        attr_accessor :rewards

        # All incentive rewards for a wallet, with claimed and unclaimed amounts per
        # token.
        sig do
          params(
            rewards: T::Array[Privy::Wallets::EarnIncentiveRewardEntry::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Reward tokens with their claimed and unclaimed amounts.
          rewards:
        )
        end

        sig do
          override.returns(
            { rewards: T::Array[Privy::Wallets::EarnIncentiveRewardEntry] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
