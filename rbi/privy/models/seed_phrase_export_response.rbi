# typed: strong

module Privy
  module Models
    class SeedPhraseExportResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SeedPhraseExportResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :ciphertext

      sig { returns(String) }
      attr_accessor :encapsulated_key

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::TaggedSymbol) }
      attr_accessor :encryption_type

      # Response containing HPKE-encrypted wallet data (private key or seed phrase).
      sig do
        params(
          ciphertext: String,
          encapsulated_key: String,
          encryption_type: Privy::HpkeEncryption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        ciphertext:,
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
