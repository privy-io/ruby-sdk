# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      class EarnIncentiveClaimRequestBody < Privy::Internal::Type::BaseModel
        # @!attribute chain
        #   The blockchain network on which to perform the incentive claim. Supported chains
        #   include: 'tempo', 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and more,
        #   along with their respective testnets.
        #
        #   @return [String]
        required :chain, String

        # @!attribute nonce
        #   Unique caller-generated nonce used to prevent replaying a signed wallet action
        #   request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        #
        #   @return [String, nil]
        optional :nonce, String

        # @!attribute reference_id
        #   Developer-provided identifier for this request. Must be unique per app.
        #
        #   @return [String, nil]
        optional :reference_id, String

        # @!method initialize(chain:, nonce: nil, reference_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Privy::Models::Wallets::EarnIncentiveClaimRequestBody} for more details.
        #
        #   Input for claiming incentive rewards.
        #
        #   @param chain [String] The blockchain network on which to perform the incentive claim. Supported chains
        #
        #   @param nonce [String] Unique caller-generated nonce used to prevent replaying a signed wallet action r
        #
        #   @param reference_id [String] Developer-provided identifier for this request. Must be unique per app.
      end
    end
  end
end
