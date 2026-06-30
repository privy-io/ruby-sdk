# typed: strong

module Privy
  module Models
    class EncryptedAuthorizationKey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EncryptedAuthorizationKey, Privy::Internal::AnyHash)
        end

      # The encrypted authorization key corresponding to the user's current
      # authentication session.
      sig { returns(String) }
      attr_accessor :ciphertext

      # Base64-encoded ephemeral public key used in the HPKE encryption process.
      # Required for decryption.
      sig { returns(String) }
      attr_accessor :encapsulated_key

      # The encryption type used. Currently only supports HPKE.
      sig do
        returns(Privy::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol)
      end
      attr_accessor :encryption_type

      # HPKE-encrypted authorization key with encapsulated key and ciphertext.
      sig do
        params(
          ciphertext: String,
          encapsulated_key: String,
          encryption_type:
            Privy::EncryptedAuthorizationKey::EncryptionType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The encrypted authorization key corresponding to the user's current
        # authentication session.
        ciphertext:,
        # Base64-encoded ephemeral public key used in the HPKE encryption process.
        # Required for decryption.
        encapsulated_key:,
        # The encryption type used. Currently only supports HPKE.
        encryption_type:
      )
      end

      sig do
        override.returns(
          {
            ciphertext: String,
            encapsulated_key: String,
            encryption_type:
              Privy::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # The encryption type used. Currently only supports HPKE.
      module EncryptionType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::EncryptedAuthorizationKey::EncryptionType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HPKE =
          T.let(
            :HPKE,
            Privy::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
