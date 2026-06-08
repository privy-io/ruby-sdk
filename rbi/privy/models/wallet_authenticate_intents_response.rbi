# typed: strong

module Privy
  module Models
    # The response from authenticating a wallet with intent bindings, containing an
    # authorization key, wallet data, and the bindings the key is scoped to.
    module WalletAuthenticateIntentsResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::EncryptedBoundAuthenticateResponse,
            Privy::RawBoundAuthenticateResponse
          )
        end

      sig do
        override.returns(
          T::Array[Privy::WalletAuthenticateIntentsResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
