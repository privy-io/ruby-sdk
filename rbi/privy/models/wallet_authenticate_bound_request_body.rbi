# typed: strong

module Privy
  module Models
    # Request body for creating a user signing key scoped to specific bindings. The
    # returned USK can only authorize the bound values and cannot sign other RPC
    # requests.
    module WalletAuthenticateBoundRequestBody
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::WalletAuthenticateBoundEncryptedRequestBody,
            Privy::WalletAuthenticateBoundUnencryptedRequestBody
          )
        end

      sig do
        override.returns(
          T::Array[Privy::WalletAuthenticateBoundRequestBody::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
