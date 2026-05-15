# typed: strong

module Privy
  module Models
    class WalletImportInitResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::WalletImportInitResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :encryption_public_key

      # The encryption type of the wallet to import. Currently only supports `HPKE`.
      sig { returns(Privy::HpkeEncryption::OrSymbol) }
      attr_accessor :encryption_type

      sig { returns(T.nilable(String)) }
      attr_reader :import_id

      sig { params(import_id: String).void }
      attr_writer :import_id

      # Response from initializing a wallet import, containing the encryption public
      # key.
      sig do
        params(
          encryption_public_key: String,
          encryption_type: Privy::HpkeEncryption::OrSymbol,
          import_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        encryption_public_key:,
        # The encryption type of the wallet to import. Currently only supports `HPKE`.
        encryption_type:,
        import_id: nil
      )
      end

      sig do
        override.returns(
          {
            encryption_public_key: String,
            encryption_type: Privy::HpkeEncryption::OrSymbol,
            import_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
