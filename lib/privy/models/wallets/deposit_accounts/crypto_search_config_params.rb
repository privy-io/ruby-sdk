# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Crypto#search_config
        class CryptoSearchConfigParams < Privy::Internal::Type::BaseModel
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!attribute q
          #   Token symbol, name, or contract address in any chain format.
          #
          #   @return [String]
          required :q, String

          # @!method initialize(q:, request_options: {})
          #   @param q [String] Token symbol, name, or contract address in any chain format.
          #
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
