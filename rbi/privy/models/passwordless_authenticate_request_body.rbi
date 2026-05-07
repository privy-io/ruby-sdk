# typed: strong

module Privy
  module Models
    class PasswordlessAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::PasswordlessAuthenticateRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :code

      sig { returns(String) }
      attr_accessor :email

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      # The request body for authenticating a passwordless account.
      sig do
        params(
          code: String,
          email: String,
          mode: Privy::AuthenticateModeOption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        code:,
        email:,
        # Whether to allow sign-up during authentication.
        mode: nil
      )
      end

      sig do
        override.returns(
          {
            code: String,
            email: String,
            mode: Privy::AuthenticateModeOption::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
