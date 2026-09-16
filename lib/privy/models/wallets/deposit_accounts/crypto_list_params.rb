# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Crypto#list
        class CryptoListParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute wallet_id
          #   ID of the wallet.
          #
          #   @return [String]
          required :wallet_id, String

          # @!attribute cursor
          #
          #   @return [String, nil]
          optional :cursor, String

          # @!attribute limit
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!method initialize(wallet_id:, cursor: nil, limit: nil, request_options: {})
          #   @param wallet_id [String] ID of the wallet.
          #
          #   @param cursor [String]
          #
          #   @param limit [Integer]
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
