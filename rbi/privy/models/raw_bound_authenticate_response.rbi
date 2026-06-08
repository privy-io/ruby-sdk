# typed: strong

module Privy
  module Models
    class RawBoundAuthenticateResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RawBoundAuthenticateResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :authorization_key

      sig { returns(T::Array[Privy::UserSigningKeyBinding]) }
      attr_accessor :bindings

      sig { returns(Float) }
      attr_accessor :expires_at

      sig { returns(T::Array[Privy::Wallet]) }
      attr_accessor :wallets

      # Unencrypted response from bound wallet authentication, with bindings.
      sig do
        params(
          authorization_key: String,
          bindings: T::Array[Privy::UserSigningKeyBinding::OrHash],
          expires_at: Float,
          wallets: T::Array[Privy::Wallet::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(authorization_key:, bindings:, expires_at:, wallets:)
      end

      sig do
        override.returns(
          {
            authorization_key: String,
            bindings: T::Array[Privy::UserSigningKeyBinding],
            expires_at: Float,
            wallets: T::Array[Privy::Wallet]
          }
        )
      end
      def to_hash
      end
    end
  end
end
