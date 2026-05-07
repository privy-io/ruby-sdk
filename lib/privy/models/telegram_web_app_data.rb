# frozen_string_literal: true

module Privy
  module Models
    class TelegramWebAppData < Privy::Internal::Type::BaseModel
      # @!attribute auth_date
      #
      #   @return [Float, nil]
      required :auth_date, Float, nil?: true

      # @!attribute hash_
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

      # @!attribute user
      #
      #   @return [String]
      required :user, String

      # @!attribute chat_instance
      #
      #   @return [String, nil]
      optional :chat_instance, String

      # @!attribute chat_type
      #
      #   @return [String, nil]
      optional :chat_type, String

      # @!attribute query_id
      #
      #   @return [String, nil]
      optional :query_id, String

      # @!attribute signature
      #
      #   @return [String, nil]
      optional :signature, String

      # @!attribute start_param
      #
      #   @return [String, nil]
      optional :start_param, String

      # @!method initialize(auth_date:, hash_:, user:, chat_instance: nil, chat_type: nil, query_id: nil, signature: nil, start_param: nil)
      #   Auth result object returned by Telegram when a user authenticates using a mini
      #   app.
      #
      #   @param auth_date [Float, nil]
      #   @param hash_ [String]
      #   @param user [String]
      #   @param chat_instance [String]
      #   @param chat_type [String]
      #   @param query_id [String]
      #   @param signature [String]
      #   @param start_param [String]
    end
  end
end
