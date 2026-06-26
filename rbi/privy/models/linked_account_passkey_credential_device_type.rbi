# typed: strong

module Privy
  module Models
    # WebAuthn credential device type indicating platform or cross-platform
    # authenticator residency.
    module LinkedAccountPasskeyCredentialDeviceType
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::LinkedAccountPasskeyCredentialDeviceType)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      SINGLE_DEVICE =
        T.let(
          :singleDevice,
          Privy::LinkedAccountPasskeyCredentialDeviceType::TaggedSymbol
        )
      MULTI_DEVICE =
        T.let(
          :multiDevice,
          Privy::LinkedAccountPasskeyCredentialDeviceType::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[
            Privy::LinkedAccountPasskeyCredentialDeviceType::TaggedSymbol
          ]
        )
      end
      def self.values
      end
    end
  end
end
