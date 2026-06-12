# frozen_string_literal: true

module Privy
  module Models
    # The response from authenticating a wallet, containing an authorization key and
    # wallet data.
    #
    # @see Privy::Resources::Wallets#authenticate_with_jwt
    module WalletAuthenticateWithJwtResponse
      extend Privy::Internal::Type::Union

      # The response from authenticating a wallet with HPKE encryption, containing an encrypted authorization key and wallet data.
      variant -> { Privy::EncryptedWalletAuthenticateResponse }

      # The response from authenticating a wallet without encryption, containing a raw authorization key and wallet data.
      variant -> { Privy::RawWalletAuthenticateResponse }

      # @!method self.variants
      #   @return [Array(Privy::Models::EncryptedWalletAuthenticateResponse, Privy::Models::RawWalletAuthenticateResponse)]
    end
  end
end
