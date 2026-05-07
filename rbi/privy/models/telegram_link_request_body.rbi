# typed: strong

module Privy
  module Models
    class TelegramLinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TelegramLinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :captcha_token

      sig { params(captcha_token: String).void }
      attr_writer :captcha_token

      # Whether to allow sign-up during authentication.
      sig { returns(T.nilable(Privy::AuthenticateModeOption::OrSymbol)) }
      attr_reader :mode

      sig { params(mode: Privy::AuthenticateModeOption::OrSymbol).void }
      attr_writer :mode

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

      # The request body for linking a Telegram account.
      sig do
        params(
          captcha_token: String,
          mode: Privy::AuthenticateModeOption::OrSymbol,
          telegram_auth_result: Privy::TelegramAuthResult::OrHash,
          telegram_web_app_data: Privy::TelegramWebAppData::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        captcha_token: nil,
        # Whether to allow sign-up during authentication.
        mode: nil,
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
            captcha_token: String,
            mode: Privy::AuthenticateModeOption::OrSymbol,
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
