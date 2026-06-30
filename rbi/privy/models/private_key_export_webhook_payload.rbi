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

      # The export type. 'display' is for showing the key to the user in the UI,
      # 'client' is for exporting to the client application.
      sig { returns(T.nilable(Privy::ExportType::TaggedSymbol)) }
      attr_reader :export_source

      sig { params(export_source: Privy::ExportType::OrSymbol).void }
      attr_writer :export_source

      # Payload for the wallet.private_key_export webhook event.
      sig do
        params(
          type: Privy::PrivateKeyExportWebhookPayload::Type::OrSymbol,
          user_id: String,
          wallet_address: String,
          wallet_id: String,
          export_source: Privy::ExportType::OrSymbol
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
        # The export type. 'display' is for showing the key to the user in the UI,
        # 'client' is for exporting to the client application.
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
            export_source: Privy::ExportType::TaggedSymbol
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
    end
  end
end
