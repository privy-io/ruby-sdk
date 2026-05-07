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

      sig do
        returns(
          T.nilable(
            Privy::SeedPhraseExportWebhookPayload::ExportSource::OrSymbol
          )
        )
      end
      attr_reader :export_source

      sig do
        params(
          export_source:
            Privy::SeedPhraseExportWebhookPayload::ExportSource::OrSymbol
        ).void
      end
      attr_writer :export_source

      # Payload for the wallet.seed_phrase_export webhook event.
      sig do
        params(
          type: Privy::SeedPhraseExportWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String,
          export_source:
            Privy::SeedPhraseExportWebhookPayload::ExportSource::OrSymbol
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
            export_source:
              Privy::SeedPhraseExportWebhookPayload::ExportSource::OrSymbol
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

      module ExportSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::SeedPhraseExportWebhookPayload::ExportSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISPLAY =
          T.let(
            :display,
            Privy::SeedPhraseExportWebhookPayload::ExportSource::TaggedSymbol
          )
        CLIENT =
          T.let(
            :client,
            Privy::SeedPhraseExportWebhookPayload::ExportSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::SeedPhraseExportWebhookPayload::ExportSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
