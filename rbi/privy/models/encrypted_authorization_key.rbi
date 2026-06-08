# typed: strong

module Privy
  module Models
    class EncryptedAuthorizationKey < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EncryptedAuthorizationKey, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :ciphertext

      sig { returns(String) }
      attr_accessor :encapsulated_key

      sig do
        returns(Privy::EncryptedAuthorizationKey::EncryptionType::OrSymbol)
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
      def self.new(ciphertext:, encapsulated_key:, encryption_type:)
      end

      sig do
        override.returns(
          {
            ciphertext: String,
            encapsulated_key: String,
            encryption_type:
              Privy::EncryptedAuthorizationKey::EncryptionType::OrSymbol
          }
        )
      end
      def to_hash
      end

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
