# typed: strong

module Privy
  module Models
    class ExportSeedPhraseRpcResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExportSeedPhraseRpcResponse, Privy::Internal::AnyHash)
        end

      # Response containing HPKE-encrypted wallet data (private key or seed phrase).
      sig { returns(Privy::SeedPhraseExportResponse) }
      attr_reader :data

      sig { params(data: Privy::SeedPhraseExportResponse::OrHash).void }
      attr_writer :data

      sig { returns(Privy::ExportSeedPhraseRpcResponse::Method::TaggedSymbol) }
      attr_accessor :method_

      # Response to the `exportSeedPhrase` RPC.
      sig do
        params(
          data: Privy::SeedPhraseExportResponse::OrHash,
          method_: Privy::ExportSeedPhraseRpcResponse::Method::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Response containing HPKE-encrypted wallet data (private key or seed phrase).
        data:,
        method_:
      )
      end

      sig do
        override.returns(
          {
            data: Privy::SeedPhraseExportResponse,
            method_: Privy::ExportSeedPhraseRpcResponse::Method::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExportSeedPhraseRpcResponse::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPORT_SEED_PHRASE =
          T.let(
            :exportSeedPhrase,
            Privy::ExportSeedPhraseRpcResponse::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::ExportSeedPhraseRpcResponse::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
