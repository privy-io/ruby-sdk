# frozen_string_literal: true

module Privy
  module Models
    class TelegramAuthConfigSchema < Privy::Internal::Type::BaseModel
      # @!attribute bot_id
      #
      #   @return [String]
      required :bot_id, String

      # @!attribute bot_name
      #
      #   @return [String]
      required :bot_name, String

      # @!attribute link_enabled
      #
      #   @return [Boolean]
      required :link_enabled, Privy::Internal::Type::Boolean

      # @!attribute seamless_auth_enabled
      #
      #   @return [Boolean]
      required :seamless_auth_enabled, Privy::Internal::Type::Boolean

      # @!method initialize(bot_id:, bot_name:, link_enabled:, seamless_auth_enabled:)
      #   Configuration for Telegram authentication.
      #
      #   @param bot_id [String]
      #   @param bot_name [String]
      #   @param link_enabled [Boolean]
      #   @param seamless_auth_enabled [Boolean]
    end
  end
end
