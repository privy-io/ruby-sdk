# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      module DepositAccounts
        # @see Privy::Resources::Wallets::DepositAccounts::Crypto#quote
        class CryptoQuoteParams < Privy::Models::DepositAccountCryptoQuoteRequestBody
          extend Privy::Internal::Type::RequestParameters::Converter
          include Privy::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
