# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module Earn
        module Ethereum
          # @see Privy::Resources::Wallets::Earn::Ethereum::Incentive#list
          class IncentiveListParams < Privy::Internal::Type::BaseModel
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            # @!attribute wallet_id
            #   ID of the wallet.
            #
            #   @return [String]
            required :wallet_id, String

            # @!attribute chain
            #   Chain name to fetch rewards for (e.g. "tempo", "base").
            #
            #   @return [String]
            required :chain, String

            # @!method initialize(wallet_id:, chain:, request_options: {})
            #   @param wallet_id [String] ID of the wallet.
            #
            #   @param chain [String] Chain name to fetch rewards for (e.g. "tempo", "base").
            #
            #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
