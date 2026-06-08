# frozen_string_literal: true

module Privy
  module Models
    # Request body for creating a user signing key scoped to specific bindings. The
    # returned USK can only authorize the bound values and cannot sign other RPC
    # requests.
    module WalletAuthenticateBoundRequestBody
      extend Privy::Internal::Type::Union

      # Request body for creating an encrypted, bound user signing key.
      variant -> { Privy::WalletAuthenticateBoundEncryptedRequestBody }

      # Request body for creating an unencrypted, bound user signing key.
      variant -> { Privy::WalletAuthenticateBoundUnencryptedRequestBody }

      # @!method self.variants
      #   @return [Array(Privy::Models::WalletAuthenticateBoundEncryptedRequestBody, Privy::Models::WalletAuthenticateBoundUnencryptedRequestBody)]
    end
  end
end
