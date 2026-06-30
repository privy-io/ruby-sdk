# typed: strong

module Privy
  module Models
    class LinkedAccountPasskeyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountPasskeyInput, Privy::Internal::AnyHash)
        end

      # WebAuthn credential device type indicating platform or cross-platform
      # authenticator residency.
      sig { returns(Privy::LinkedAccountPasskeyCredentialDeviceType::OrSymbol) }
      attr_accessor :credential_device_type

      sig { returns(String) }
      attr_accessor :credential_id

      sig { returns(String) }
      attr_accessor :credential_public_key

      sig { returns(String) }
      attr_accessor :credential_username

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing a passkey account.
      sig do
        params(
          credential_device_type:
            Privy::LinkedAccountPasskeyCredentialDeviceType::OrSymbol,
          credential_id: String,
          credential_public_key: String,
          credential_username: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        # WebAuthn credential device type indicating platform or cross-platform
        # authenticator residency.
        credential_device_type:,
        credential_id:,
        credential_public_key:,
        credential_username:,
        type: :passkey
      )
      end

      sig do
        override.returns(
          {
            credential_device_type:
              Privy::LinkedAccountPasskeyCredentialDeviceType::OrSymbol,
            credential_id: String,
            credential_public_key: String,
            credential_username: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
