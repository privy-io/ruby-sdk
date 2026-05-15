# typed: strong

module Privy
  module Models
    class UserWithIdentityToken < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::UserWithIdentityToken, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :identity_token

      # A Privy user object.
      sig { returns(Privy::User) }
      attr_reader :user

      sig { params(user: Privy::User::OrHash).void }
      attr_writer :user

      # The user object along their identity token.
      sig do
        params(
          identity_token: T.nilable(String),
          user: Privy::User::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        identity_token:,
        # A Privy user object.
        user:
      )
      end

      sig do
        override.returns(
          { identity_token: T.nilable(String), user: Privy::User }
        )
      end
      def to_hash
      end
    end
  end
end
