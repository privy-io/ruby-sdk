# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Fiat#create
        class FiatCreateParams < Privy::Models::CreateFiatDepositAccountRequestBody
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   The ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

          # @!method initialize(wallet_id:, request_options: {})
          #   @param wallet_id [String] The ID of the wallet.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
