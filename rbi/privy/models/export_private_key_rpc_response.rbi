# typed: strong

module Privy
  module Models
    class ExportPrivateKeyRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExportPrivateKeyRpcResponse, Privy::Internal::AnyHash)
        end

      # Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      sig { returns(Privy::PrivateKeyExportInput) }
      attr_reader :data

      sig { params(data: Privy::PrivateKeyExportInput::OrHash).void }
      attr_writer :data

      sig { returns(Privy::ExportPrivateKeyRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # Response to the `exportPrivateKey` RPC.
      sig do
        params(
          data: Privy::PrivateKeyExportInput::OrHash,
          method_: Privy::ExportPrivateKeyRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::PrivateKeyExportInput,
            method_: Privy::ExportPrivateKeyRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExportPrivateKeyRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPORT_PRIVATE_KEY =
          T.let(
            :exportPrivateKey,
            Privy::ExportPrivateKeyRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::ExportPrivateKeyRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
