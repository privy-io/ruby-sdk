# typed: strong

module Privy
  module Models
    class SeedPhraseExportInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SeedPhraseExportInput, Privy::Internal::AnyHash)
        end

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::OrSymbol) }
      attr_accessor :encryption_type

      # The recipient public key for HPKE encryption, in PEM or DER (base64-encoded)
      # format.
      sig { returns(String) }
      attr_accessor :recipient_public_key

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :export_seed_phrase

      sig { params(export_seed_phrase: T::Boolean).void }
      attr_writer :export_seed_phrase

      # The export type. 'display' is for showing the key to the user in the UI,
      # 'client' is for exporting to the client application.
      sig { returns(T.nilable(Privy::ExportType::OrSymbol)) }
      attr_reader :export_type

      sig { params(export_type: Privy::ExportType::OrSymbol).void }
      attr_writer :export_type

      # Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      sig do
        params(
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          recipient_public_key: String,
          export_seed_phrase: T::Boolean,
          export_type: Privy::ExportType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:,
        # The recipient public key for HPKE encryption, in PEM or DER (base64-encoded)
        # format.
        recipient_public_key:,
        export_seed_phrase: nil,
        # The export type. 'display' is for showing the key to the user in the UI,
        # 'client' is for exporting to the client application.
        export_type: nil
      )
      end

      sig do
        override.returns(
          {
            encryption_type: Privy::HpkeEncryption::OrSymbol,
            recipient_public_key: String,
            export_seed_phrase: T::Boolean,
            export_type: Privy::ExportType::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
