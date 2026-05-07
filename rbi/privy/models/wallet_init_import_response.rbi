# typed: strong

module Privy
  module Models
    class WalletInitImportResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::Models::WalletInitImportResponse,
            Privy::Internal::AnyHash
          )
        end

      # The base64-encoded encryption public key to encrypt the wallet entropy with.
      sig { returns(String) }
      attr_accessor :encryption_public_key

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::TaggedSymbol) }
      attr_accessor :encryption_type

      sig do
        params(
          encryption_public_key: String,
          encryption_type: Privy::HpkeEncryption::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The base64-encoded encryption public key to encrypt the wallet entropy with.
        encryption_public_key:,
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:
      )
      end

      sig do
        override.returns(
          {
            encryption_public_key: String,
            encryption_type: Privy::HpkeEncryption::TaggedSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
