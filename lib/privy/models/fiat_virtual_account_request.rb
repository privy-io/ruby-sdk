# frozen_string_literal: true

module Privy
  module Models
    # The request input for creating virtual account.
    module FiatVirtualAccountRequest
      extend Privy::Internal::Type::Union

      discriminator :provider

      # The request input for creating virtual account.
      variant :bridge, -> { Privy::BridgeFiatVirtualAccountRequest }

      # The request input for creating virtual account.
      variant :"bridge-sandbox", -> { Privy::BridgeSandboxFiatVirtualAccountRequest }

      # @!method self.variants
      #   @return [Array(Privy::Models::BridgeFiatVirtualAccountRequest, Privy::Models::BridgeSandboxFiatVirtualAccountRequest)]
    end
  end
end
