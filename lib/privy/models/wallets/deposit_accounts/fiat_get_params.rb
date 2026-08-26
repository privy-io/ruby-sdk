# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Fiat#get
        class FiatGetParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   The ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

          # @!attribute deposit_account_id
          #   The ID of the fiat deposit account.
          #
          #   @return [String]
          required :deposit_account_id, String

          # @!method initialize(wallet_id:, deposit_account_id:, request_options: {})
          #   @param wallet_id [String] The ID of the wallet.
          #
          #   @param deposit_account_id [String] The ID of the fiat deposit account.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
