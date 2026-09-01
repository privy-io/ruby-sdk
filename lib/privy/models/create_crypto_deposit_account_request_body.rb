# frozen_string_literal: true

module Privy
  module Models
    # Request body for creating a crypto deposit account.
    module CreateCryptoDepositAccountRequestBody
      extend Privy::Internal::Type::Union

      discriminator :type

      # Creates a crypto deposit account from an existing deposit configuration.
      variant :deposit_config, -> { Privy::CreateCryptoDepositAccountWithConfigRequestBody }

      # Creates a crypto deposit account from an inline source and destination.
      variant :inline_route, -> { Privy::CreateCryptoDepositAccountWithRouteRequestBody }

      # @!method self.variants
      #   @return [Array(Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody, Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody)]
    end
  end
end
