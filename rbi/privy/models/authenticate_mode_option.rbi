# typed: strong

module Privy
  module Models
    # Whether to allow sign-up during authentication.
    module AuthenticateModeOption
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::AuthenticateModeOption) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      NO_SIGNUP =
        T.let(:"no-signup", Privy::AuthenticateModeOption::TaggedSymbol)
      LOGIN_OR_SIGN_UP =
        T.let(:"login-or-sign-up", Privy::AuthenticateModeOption::TaggedSymbol)

      sig do
        override.returns(T::Array[Privy::AuthenticateModeOption::TaggedSymbol])
      end
      def self.values
      end
    end
  end
end
