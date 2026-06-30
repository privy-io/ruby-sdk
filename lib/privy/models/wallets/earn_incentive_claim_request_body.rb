# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnIncentiveClaimRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute chain
        #   The blockchain network on which to perform the incentive claim. Supported chains
        #   include: 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and more, along
        #   with their respective testnets.
        #
        #   @return [String]
        required :chain, String

        # @!method initialize(chain:)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::EarnIncentiveClaimRequestBody} for more details.
        #
        #   Input for claiming incentive rewards.
        #
        #   @param chain [String] The blockchain network on which to perform the incentive claim. Supported chains
      end
    end
  end
end
