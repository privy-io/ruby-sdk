# typed: strong

module Privy
  module Models
    class ExportSeedPhraseRpcInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExportSeedPhraseRpcInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Privy::ExportSeedPhraseRpcInput::Method::OrSymbol) }
      attr_accessor :method_

      # Input for exporting a wallet (private key or seed phrase) with HPKE encryption.
      sig { returns(Privy::SeedPhraseExportInput) }
      attr_reader :params

      sig { params(params: Privy::SeedPhraseExportInput::OrHash).void }
      attr_writer :params

      # Exports the seed phrase of the wallet.
      sig do
        params(
          address: String,
          method_: Privy::ExportSeedPhraseRpcInput::Method::OrSymbol,
          params: Privy::SeedPhraseExportInput::OrHash
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
            method_: Privy::ExportSeedPhraseRpcInput::Method::OrSymbol,
            params: Privy::SeedPhraseExportInput
          }
        )
      end
      def to_hash
      end

      module Method
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExportSeedPhraseRpcInput::Method)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EXPORT_SEED_PHRASE =
          T.let(
            :exportSeedPhrase,
            Privy::ExportSeedPhraseRpcInput::Method::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::ExportSeedPhraseRpcInput::Method::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
