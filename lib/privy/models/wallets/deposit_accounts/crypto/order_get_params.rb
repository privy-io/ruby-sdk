# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        module Crypto
          # @see Privy::Resources::Wallets::DepositAccounts::Crypto::Orders#get
          class OrderGetParams < Privy::Internal::Type::BaseModel
            extend Privy::Internal::Type::RequestParameters::Converter
            include Privy::Internal::Type::RequestParameters

            # @!attribute wallet_id
            #   ID of the wallet.
            #
            #   @return [String]
            required :wallet_id, String

            # @!attribute order_id
            #   Wallet action ID of the deposit sweep.
            #
            #   @return [String]
            required :order_id, String

            # @!method initialize(wallet_id:, order_id:, request_options: {})
            #   @param wallet_id [String] ID of the wallet.
            #
            #   @param order_id [String] Wallet action ID of the deposit sweep.
            #
            #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
