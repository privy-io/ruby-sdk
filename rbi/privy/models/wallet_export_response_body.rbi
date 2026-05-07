# typed: strong

module Privy
  module Models
    class WalletExportResponseBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletExportResponseBody, Privy::Internal::AnyHash)
        end

      # The encrypted private key.
      sig { returns(String) }
      attr_accessor :ciphertext

      # The base64-encoded encapsulated key that was generated during encryption, for
      # use during decryption.
      sig { returns(String) }
      attr_accessor :encapsulated_key

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::TaggedSymbol) }
      attr_accessor :encryption_type

      # Response body containing the encrypted wallet private key.
      sig do
        params(
          ciphertext: String,
          encapsulated_key: String,
          encryption_type: Privy::HpkeEncryption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The encrypted private key.
        ciphertext:,
        # The base64-encoded encapsulated key that was generated during encryption, for
        # use during decryption.
        encapsulated_key:,
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:
      )
      end

      sig do
        override.returns(
          {
            ciphertext: String,
            encapsulated_key: String,
            encryption_type: Privy::HpkeEncryption::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
