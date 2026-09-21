# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Crypto#get_next_order
        class CryptoGetNextOrderParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

          # @!attribute after
          #   Return the earliest sweep strictly after this timestamp.
          #
          #   @return [Time]
          required :after, Time

          # @!method initialize(wallet_id:, after:, request_options: {})
          #   @param wallet_id [String] ID of the wallet.
          #
          #   @param after [Time] Return the earliest sweep strictly after this timestamp.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
