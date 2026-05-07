# typed: strong

module Privy
  module Models
    class LinkedAccountPasskeyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountPasskeyInput, Privy::Internal::AnyHash)
        end

      sig do
        returns(
          Privy::LinkedAccountPasskeyInput::CredentialDeviceType::OrSymbol
        )
      end
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
            Privy::LinkedAccountPasskeyInput::CredentialDeviceType::OrSymbol,
          credential_id: String,
          credential_public_key: String,
          credential_username: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
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
              Privy::LinkedAccountPasskeyInput::CredentialDeviceType::OrSymbol,
            credential_id: String,
            credential_public_key: String,
            credential_username: String,
            type: Symbol
          }
        )
      end
      def to_hash
      end

      module CredentialDeviceType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountPasskeyInput::CredentialDeviceType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SINGLE_DEVICE =
          T.let(
            :singleDevice,
            Privy::LinkedAccountPasskeyInput::CredentialDeviceType::TaggedSymbol
          )
        MULTI_DEVICE =
          T.let(
            :multiDevice,
            Privy::LinkedAccountPasskeyInput::CredentialDeviceType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountPasskeyInput::CredentialDeviceType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
