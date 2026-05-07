# typed: strong

module Privy
  module Models
    class HpkeImportConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::HpkeImportConfig, Privy::Internal::AnyHash)
        end

      # Additional Authenticated Data (AAD) used during encryption. Should be
      # base64-encoded bytes.
      sig { returns(T.nilable(String)) }
      attr_reader :aad

      sig { params(aad: String).void }
      attr_writer :aad

      # The AEAD algorithm used for HPKE encryption.
      sig { returns(T.nilable(Privy::HpkeAeadAlgorithm::OrSymbol)) }
      attr_reader :aead_algorithm

      sig { params(aead_algorithm: Privy::HpkeAeadAlgorithm::OrSymbol).void }
      attr_writer :aead_algorithm

      # Application-specific context information (INFO) used during HPKE encryption.
      # Should be base64-encoded bytes.
      sig { returns(T.nilable(String)) }
      attr_reader :info

      sig { params(info: String).void }
      attr_writer :info

      # Optional HPKE configuration for wallet import decryption. These parameters allow
      # importing wallets encrypted by external providers that use different HPKE
      # configurations.
      sig do
        params(
          aad: String,
          aead_algorithm: Privy::HpkeAeadAlgorithm::OrSymbol,
          info: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Additional Authenticated Data (AAD) used during encryption. Should be
        # base64-encoded bytes.
        aad: nil,
        # The AEAD algorithm used for HPKE encryption.
        aead_algorithm: nil,
        # Application-specific context information (INFO) used during HPKE encryption.
        # Should be base64-encoded bytes.
        info: nil
      )
      end

      sig do
        override.returns(
          {
            aad: String,
            aead_algorithm: Privy::HpkeAeadAlgorithm::OrSymbol,
            info: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
