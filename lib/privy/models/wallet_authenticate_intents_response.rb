# frozen_string_literal: true

module Privy
  module Models
    # The response from authenticating a wallet with intent bindings, containing an
    # authorization key, wallet data, and the bindings the key is scoped to.
    module WalletAuthenticateIntentsResponse
      extend Privy::Internal::Type::Union

      # Encrypted response from bound wallet authentication, with bindings.
      variant -> { Privy::EncryptedBoundAuthenticateResponse }

      # Unencrypted response from bound wallet authentication, with bindings.
      variant -> { Privy::RawBoundAuthenticateResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::EncryptedBoundAuthenticateResponse, Privy::Models::RawBoundAuthenticateResponse)]
    end
  end
end
