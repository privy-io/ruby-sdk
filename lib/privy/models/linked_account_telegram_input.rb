# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTelegramInput < Privy::Internal::Type::BaseModel
      # @!attribute telegram_user_id
      #
      #   @return [String]
      required :telegram_user_id, String

      # @!attribute type
      #
      #   @return [Symbol, :telegram]
      required :type, const: :telegram

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute photo_url
      #
      #   @return [String, nil]
      optional :photo_url, String

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String

      # @!method initialize(telegram_user_id:, first_name: nil, last_name: nil, photo_url: nil, username: nil, type: :telegram)
      #   The payload for importing a Telegram account.
      #
      #   @param telegram_user_id [String]
      #   @param first_name [String]
      #   @param last_name [String]
      #   @param photo_url [String]
      #   @param username [String]
      #   @param type [Symbol, :telegram]
    end
  end
end
