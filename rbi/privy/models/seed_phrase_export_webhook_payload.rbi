# typed: strong

module Privy
  module Models
    class SeedPhraseExportWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SeedPhraseExportWebhookPayload, Privy::Internal::AnyHash)
        end

      # The type of webhook event.
      sig { returns(Privy::SeedPhraseExportWebhookPayload::Type::OrSymbol) }
      attr_accessor :type

      # The ID of the user who exported the seed phrase.
      sig { returns(String) }
      attr_accessor :user_id

      # The address of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_address

      # The ID of the wallet.
      sig { returns(String) }
      attr_accessor :wallet_id

      # The export type. 'display' is for showing the key to the user in the UI,
      # 'client' is for exporting to the client application.
      sig { returns(T.nilable(Privy::ExportType::OrSymbol)) }
      attr_reader :export_source

      sig { params(export_source: Privy::ExportType::OrSymbol).void }
      attr_writer :export_source

      # Payload for the wallet.seed_phrase_export webhook event.
      sig do
        params(
          type: Privy::SeedPhraseExportWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String,
          export_source: Privy::ExportType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of webhook event.
        type:,
        # The ID of the user who exported the seed phrase.
        user_id:,
        # The address of the wallet.
        wallet_address:,
        # The ID of the wallet.
        wallet_id:,
        # The export type. 'display' is for showing the key to the user in the UI,
        # 'client' is for exporting to the client application.
        export_source: nil
      )
      end

      sig do
        override.returns(
          {
            type: Privy::SeedPhraseExportWebhookPayload::Type::OrSymbol,
            user_id: String,
            wallet_address: String,
            wallet_id: String,
            export_source: Privy::ExportType::OrSymbol
          }
        )
      end
      def to_hash
      end

      # The type of webhook event.
      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SeedPhraseExportWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_SEED_PHRASE_EXPORT =
          T.let(
            :"wallet.seed_phrase_export",
            Privy::SeedPhraseExportWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::SeedPhraseExportWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
