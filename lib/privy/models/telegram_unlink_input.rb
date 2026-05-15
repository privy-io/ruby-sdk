# frozen_string_literal: true

module Privy
  module Models
    class TelegramUnlinkInput < Privy::Internal::Type::BaseModel
      # @!attribute telegram_user_id
      #
      #   @return [String]
      required :telegram_user_id, String

      # @!method initialize(telegram_user_id:)
      #   Input for unlinking a Telegram account.
      #
      #   @param telegram_user_id [String]
    end
  end
end
