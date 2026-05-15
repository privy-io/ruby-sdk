# typed: strong

module Privy
  module Models
    class CustomJwtAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CustomJwtAuthenticateRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :token

      sig { params(token: String).void }
      attr_writer :token

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      # The request body for authenticating with a custom JWT.
      sig do
        params(
          token: String,
          mode: Privy::AuthenticateModeOption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        token: nil,
        # Whether to allow sign-up during authentication.
        mode: nil
      )
      end

      sig do
        override.returns(
          { token: String, mode: Privy::AuthenticateModeOption::OrSymbol }
        )
      end
      def to_hash
      end
    end
  end
end
