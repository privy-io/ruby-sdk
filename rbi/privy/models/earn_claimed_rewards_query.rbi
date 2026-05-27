# typed: strong

module Privy
  module Models
    class EarnClaimedRewardsQuery < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EarnClaimedRewardsQuery, Privy::Internal::AnyHash)
        end

      # Chain name to fetch claimed rewards for (e.g. "base", "ethereum").
      sig { returns(String) }
      attr_accessor :chain

      # Query parameters for fetching claimed incentive rewards.
      sig { params(chain: String).returns(T.attached_class) }
      def self.new(
        # Chain name to fetch claimed rewards for (e.g. "base", "ethereum").
        chain:
      )
      end

      sig { override.returns({ chain: String }) }
      def to_hash
      end
    end
  end
end
