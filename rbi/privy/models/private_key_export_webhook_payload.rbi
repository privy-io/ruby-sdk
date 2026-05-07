# typed: strong

module Privy
  module Models
    class PrivateKeyExportWebhookPayload < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PrivateKeyExportWebhookPayload, Privy::Internal::AnyHash)
        end

      # The type of webhook event.
      sig { returns(Privy::PrivateKeyExportWebhookPayload::Type::TaggedSymbol) }
      attr_accessor :type

      # The ID of the user who exported the key.
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
            Privy::PrivateKeyExportWebhookPayload::ExportSource::TaggedSymbol
          )
        )
      end
      attr_reader :export_source

      sig do
        params(
          export_source:
            Privy::PrivateKeyExportWebhookPayload::ExportSource::OrSymbol
        ).void
      end
      attr_writer :export_source

      # Payload for the wallet.private_key_export webhook event.
      sig do
        params(
          type: Privy::PrivateKeyExportWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String,
          export_source:
            Privy::PrivateKeyExportWebhookPayload::ExportSource::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The type of webhook event.
        type:,
        # The ID of the user who exported the key.
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
            type: Privy::PrivateKeyExportWebhookPayload::Type::TaggedSymbol,
            user_id: String,
            wallet_address: String,
            wallet_id: String,
            export_source:
              Privy::PrivateKeyExportWebhookPayload::ExportSource::TaggedSymbol
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
            T.all(Symbol, Privy::PrivateKeyExportWebhookPayload::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET_PRIVATE_KEY_EXPORT =
          T.let(
            :"wallet.private_key_export",
            Privy::PrivateKeyExportWebhookPayload::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::PrivateKeyExportWebhookPayload::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module ExportSource
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::PrivateKeyExportWebhookPayload::ExportSource)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISPLAY =
          T.let(
            :display,
            Privy::PrivateKeyExportWebhookPayload::ExportSource::TaggedSymbol
          )
        CLIENT =
          T.let(
            :client,
            Privy::PrivateKeyExportWebhookPayload::ExportSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::PrivateKeyExportWebhookPayload::ExportSource::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
