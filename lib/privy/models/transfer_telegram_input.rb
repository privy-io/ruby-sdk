# frozen_string_literal: true

module Privy
  module Models
    class TransferTelegramInput < Privy::Internal::Type::BaseModel
      # @!attribute nonce
      #
      #   @return [String]
      required :nonce, String

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

      # @!method initialize(nonce:, telegram_auth_result: nil, telegram_web_app_data: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::TransferTelegramInput} for more details.
      #
      #   Input for transferring a Telegram account.
      #
      #   @param nonce [String]
      #
      #   @param telegram_auth_result [Privy::Models::TelegramAuthResult] Auth result object returned by Telegram when a user authenticates using the logi
      #
      #   @param telegram_web_app_data [Privy::Models::TelegramWebAppData] Auth result object returned by Telegram when a user authenticates using a mini a
    end
  end
end
