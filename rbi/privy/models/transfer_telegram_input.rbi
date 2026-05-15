# typed: strong

module Privy
  module Models
    class TransferTelegramInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferTelegramInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :nonce

      # Auth result object returned by Telegram when a user authenticates using the
      # login widget.
      sig { returns(T.nilable(Privy::TelegramAuthResult)) }
      attr_reader :telegram_auth_result

      sig do
        params(telegram_auth_result: Privy::TelegramAuthResult::OrHash).void
      end
      attr_writer :telegram_auth_result

      # Auth result object returned by Telegram when a user authenticates using a mini
      # app.
      sig { returns(T.nilable(Privy::TelegramWebAppData)) }
      attr_reader :telegram_web_app_data

      sig do
        params(telegram_web_app_data: Privy::TelegramWebAppData::OrHash).void
      end
      attr_writer :telegram_web_app_data

      # Input for transferring a Telegram account.
      sig do
        params(
          nonce: String,
          telegram_auth_result: Privy::TelegramAuthResult::OrHash,
          telegram_web_app_data: Privy::TelegramWebAppData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        nonce:,
        # Auth result object returned by Telegram when a user authenticates using the
        # login widget.
        telegram_auth_result: nil,
        # Auth result object returned by Telegram when a user authenticates using a mini
        # app.
        telegram_web_app_data: nil
      )
      end

      sig do
        override.returns(
          {
            nonce: String,
            telegram_auth_result: Privy::TelegramAuthResult,
            telegram_web_app_data: Privy::TelegramWebAppData
          }
        )
      end
      def to_hash
      end
    end
  end
end
