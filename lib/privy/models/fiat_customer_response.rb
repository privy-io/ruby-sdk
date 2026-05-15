# frozen_string_literal: true

module Privy
  module Models
    # The response for getting a native onramp provider customer.
    module FiatCustomerResponse
      extend Privy::Internal::Type::Union

      discriminator :provider

      # The response for getting a native onramp provider customer.
      variant :bridge, -> { Privy::BridgeFiatCustomerResponse }

      # The response for getting a native onramp provider customer.
      variant :"bridge-sandbox", -> { Privy::BridgeSandboxFiatCustomerResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::BridgeFiatCustomerResponse, Privy::Models::BridgeSandboxFiatCustomerResponse)]
    end
  end
end
