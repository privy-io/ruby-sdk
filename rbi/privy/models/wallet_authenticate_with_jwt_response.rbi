# typed: strong

module Privy
  module Models
    # The response from authenticating a wallet, containing an authorization key and
    # wallet data.
    module WalletAuthenticateWithJwtResponse
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::WalletAuthenticateWithJwtResponse::WithEncryption,
            Privy::WalletAuthenticateWithJwtResponse::WithoutEncryption
          )
        end

      class WithEncryption < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletAuthenticateWithJwtResponse::WithEncryption,
              Privy::Internal::AnyHash
            )
          end

        # The encrypted authorization key data.
        sig do
          returns(
            Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey
          )
        end
        attr_reader :encrypted_authorization_key

        sig do
          params(
            encrypted_authorization_key:
              Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::OrHash
          ).void
        end
        attr_writer :encrypted_authorization_key

        # The expiration time of the authorization key in milliseconds since the epoch.
        sig { returns(Float) }
        attr_accessor :expires_at

        sig { returns(T::Array[Privy::Wallet]) }
        attr_accessor :wallets

        sig do
          params(
            encrypted_authorization_key:
              Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::OrHash,
            expires_at: Float,
            wallets: T::Array[Privy::Wallet::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The encrypted authorization key data.
          encrypted_authorization_key:,
          # The expiration time of the authorization key in milliseconds since the epoch.
          expires_at:,
          wallets:
        )
        end

        sig do
          override.returns(
            {
              encrypted_authorization_key:
                Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey,
              expires_at: Float,
              wallets: T::Array[Privy::Wallet]
            }
          )
        end
        def to_hash
        end

        class EncryptedAuthorizationKey < Privy::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey,
                Privy::Internal::AnyHash
              )
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
            returns(
              Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
            )
          end
          attr_accessor :encryption_type

          # The encrypted authorization key data.
          sig do
            params(
              ciphertext: String,
              encapsulated_key: String,
              encryption_type:
                Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType::OrSymbol
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
                  Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
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
                T.all(
                  Symbol,
                  Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HPKE =
              T.let(
                :HPKE,
                Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Privy::WalletAuthenticateWithJwtResponse::WithEncryption::EncryptedAuthorizationKey::EncryptionType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end

      class WithoutEncryption < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::WalletAuthenticateWithJwtResponse::WithoutEncryption,
              Privy::Internal::AnyHash
            )
          end

        # The raw authorization key data.
        sig { returns(String) }
        attr_accessor :authorization_key

        # The expiration time of the authorization key in milliseconds since the epoch.
        sig { returns(Float) }
        attr_accessor :expires_at

        sig { returns(T::Array[Privy::Wallet]) }
        attr_accessor :wallets

        sig do
          params(
            authorization_key: String,
            expires_at: Float,
            wallets: T::Array[Privy::Wallet::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # The raw authorization key data.
          authorization_key:,
          # The expiration time of the authorization key in milliseconds since the epoch.
          expires_at:,
          wallets:
        )
        end

        sig do
          override.returns(
            {
              authorization_key: String,
              expires_at: Float,
              wallets: T::Array[Privy::Wallet]
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Privy::WalletAuthenticateWithJwtResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
