# typed: strong

module Privy
  module Models
    class WalletAuthenticateBoundUnencryptedRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::WalletAuthenticateBoundUnencryptedRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # Bindings that scope the USK. The key can only authorize the bound values.
      sig { returns(T::Array[Privy::UserSigningKeyBinding]) }
      attr_accessor :bindings

      sig { returns(String) }
      attr_accessor :user_jwt

      # Request body for creating an unencrypted, bound user signing key.
      sig do
        params(
          bindings: T::Array[Privy::UserSigningKeyBinding::OrHash],
          user_jwt: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Bindings that scope the USK. The key can only authorize the bound values.
        bindings:,
        user_jwt:
      )
      end

      sig do
        override.returns(
          { bindings: T::Array[Privy::UserSigningKeyBinding], user_jwt: String }
        )
      end
      def to_hash
      end
    end
  end
end
