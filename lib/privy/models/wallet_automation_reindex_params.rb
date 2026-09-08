# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::WalletAutomations#reindex
    class WalletAutomationReindexParams < Privy::Models::WalletAutomationReindexRequestBody
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
