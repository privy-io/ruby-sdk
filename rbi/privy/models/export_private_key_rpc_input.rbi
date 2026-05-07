# typed: strong

module Privy
  module Models
    class ExportPrivateKeyRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExportPrivateKeyRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::ExportPrivateKeyRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      sig { returns(Privy::PrivateKeyExportInput) }
      attr_reader :params

      sig { params(params: Privy::PrivateKeyExportInput::OrHash).void }
      attr_writer :params

      # Exports the private key of the wallet.
      sig do
        params(
          address: String,
          method_: Privy::ExportPrivateKeyRpcInput::Method::OrSymbol,
          params: Privy::PrivateKeyExportInput::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        method_:,
        # Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
        params:
      )
      end

      sig do
        override.returns(
          {
            address: String,
            method_: Privy::ExportPrivateKeyRpcInput::Method::OrSymbol,
            params: Privy::PrivateKeyExportInput
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExportPrivateKeyRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPORT_PRIVATE_KEY =
          T.let(
            :exportPrivateKey,
            Privy::ExportPrivateKeyRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::ExportPrivateKeyRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
