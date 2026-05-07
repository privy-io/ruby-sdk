# typed: strong

module Privy
  module Models
    class AuthenticateMode < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AuthenticateMode, Privy::Internal::AnyHash)
        end

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

      # The authentication mode settings for the ceremony.
      sig do
        params(mode: Privy::AuthenticateModeOption::OrSymbol).returns(
          T.attached_class
        )
      end
      def self.new(
        # Whether to allow sign-up during authentication.
        mode: nil
      )
      end

      sig do
        override.returns({ mode: Privy::AuthenticateModeOption::OrSymbol })
      end
      def to_hash
      end
    end
  end
end
