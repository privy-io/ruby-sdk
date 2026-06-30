# typed: strong

module Privy
  module Models
    # A multi-factor authentication method supported by the app.
    module MfaMethod
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::MfaMethod) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SMS = T.let(:sms, Privy::MfaMethod::TaggedSymbol)
      TOTP = T.let(:totp, Privy::MfaMethod::TaggedSymbol)
      PASSKEY = T.let(:passkey, Privy::MfaMethod::TaggedSymbol)

      sig { override.returns(T::Array[Privy::MfaMethod::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
