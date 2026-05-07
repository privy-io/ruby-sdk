# frozen_string_literal: true

module Privy
  module Models
    # The ID of an OAuth provider.
    module OAuthProviderID
      extend Privy::Internal::Type::Union

      # The ID of an external OAuth provider.
      variant enum: -> { Privy::ExternalOAuthProviderID }

      # The ID of a Privy app as an OAuth provider. Must start with "privy:".
      variant -> { Privy::PrivyOAuthProviderID }

      # @!method self.variants
      #   @return [Array(Symbol, Privy::Models::ExternalOAuthProviderID, String)]
    end
  end
end
