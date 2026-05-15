# typed: strong

module Privy
  module Models
    class WalletExportRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletExportRequestBody, Privy::Internal::AnyHash)
        end

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::OrSymbol) }
      attr_accessor :encryption_type

      # The base64-encoded encryption public key to encrypt the wallet private key with.
      sig { returns(String) }
      attr_accessor :recipient_public_key

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :export_seed_phrase

      sig { params(export_seed_phrase: T::Boolean).void }
      attr_writer :export_seed_phrase

      # Request body for exporting a wallet private key.
      sig do
        params(
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          recipient_public_key: String,
          export_seed_phrase: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:,
        # The base64-encoded encryption public key to encrypt the wallet private key with.
        recipient_public_key:,
        export_seed_phrase: nil
      )
      end

      sig do
        override.returns(
          {
            encryption_type: Privy::HpkeEncryption::OrSymbol,
            recipient_public_key: String,
            export_seed_phrase: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
