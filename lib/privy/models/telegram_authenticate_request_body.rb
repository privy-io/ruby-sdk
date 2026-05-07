# frozen_string_literal: true

module Privy
  module Models
    class TelegramAuthenticateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute captcha_token
      #
      #   @return [String, nil]
      optional :captcha_token, String

      # @!attribute mode
      #   Whether to allow sign-up during authentication.
      #
      #   @return [Symbol, Privy::Models::AuthenticateModeOption, nil]
      optional :mode, enum: -> { Privy::AuthenticateModeOption }

      # @!attribute telegram_auth_result
      #   Auth result object returned by Telegram when a user authenticates using the
      #   login widget.
      #
      #   @return [Privy::Models::TelegramAuthResult, nil]
      optional :telegram_auth_result, -> { Privy::TelegramAuthResult }

      # @!attribute telegram_web_app_data
      #   Auth result object returned by Telegram when a user authenticates using a mini
      #   app.
      #
      #   @return [Privy::Models::TelegramWebAppData, nil]
      optional :telegram_web_app_data, -> { Privy::TelegramWebAppData }

      # @!method initialize(captcha_token: nil, mode: nil, telegram_auth_result: nil, telegram_web_app_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TelegramAuthenticateRequestBody} for more details.
      #
      #   The request body for authenticating with Telegram.
      #
      #   @param captcha_token [String]
      #
      #   @param mode [Symbol, Privy::Models::AuthenticateModeOption] Whether to allow sign-up during authentication.
      #
      #   @param telegram_auth_result [Privy::Models::TelegramAuthResult] Auth result object returned by Telegram when a user authenticates using the logi
      #
      #   @param telegram_web_app_data [Privy::Models::TelegramWebAppData] Auth result object returned by Telegram when a user authenticates using a mini a
    end
  end
end
