# frozen_string_literal: true

module Privy
  module Models
    # The response for creating virtual account.
    module FiatVirtualAccountResponse
      extend Privy::Internal::Type::Union

      discriminator :provider

      # The response for creating virtual account.
      variant :bridge, -> { Privy::BridgeFiatVirtualAccountResponse }

      # The response for creating virtual account.
      variant :"bridge-sandbox", -> { Privy::BridgeSandboxFiatVirtualAccountResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::BridgeFiatVirtualAccountResponse, Privy::Models::BridgeSandboxFiatVirtualAccountResponse)]
    end
  end
end
