# typed: strong

module Privy
  module Models
    # The response from authenticating a wallet, containing an authorization key and
    # wallet data.
    module WalletAuthenticateWithJwtResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EncryptedWalletAuthenticateResponse,
            Privy::RawWalletAuthenticateResponse
          )
        end

      sig do
        override.returns(
          T::Array[Privy::WalletAuthenticateWithJwtResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
