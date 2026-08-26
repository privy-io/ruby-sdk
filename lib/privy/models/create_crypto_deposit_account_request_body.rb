# frozen_string_literal: true

module Privy
  module Models
    # Request body for creating a crypto deposit account.
    module CreateCryptoDepositAccountRequestBody
      extend Privy::Internal::Type::Union

      # Creates a crypto deposit account from an existing deposit configuration.
      variant -> { Privy::CreateCryptoDepositAccountWithConfigRequestBody }

      # Creates a crypto deposit account from an inline source and destination.
      variant -> { Privy::CreateCryptoDepositAccountWithRouteRequestBody }

      # @!method self.variants
      #   @return [Array(Privy::Models::CreateCryptoDepositAccountWithConfigRequestBody, Privy::Models::CreateCryptoDepositAccountWithRouteRequestBody)]
    end
  end
end
