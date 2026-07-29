# frozen_string_literal: true

module Privy
  module Models
    class RpcSponsorOptions < Privy::Internal::Type::BaseModel
      # @!attribute asset
      #   Token asset identifier for user-pays gas sponsorship. Common values: 'usdc',
      #   'usdt', 'eurc', 'usdg', 'usdc_e'. Available tokens vary by chain.
      #
      #   @return [String]
      required :asset, String

      # @!method initialize(asset:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::RpcSponsorOptions} for more details.
      #
      #   Options for user-pays gas sponsorship on the RPC endpoint. When provided
      #   alongside `sponsor: true`, controls which token asset the user pays gas with.
      #
      #   @param asset [String] Token asset identifier for user-pays gas sponsorship. Common values: 'usdc', 'us
    end
  end
end
