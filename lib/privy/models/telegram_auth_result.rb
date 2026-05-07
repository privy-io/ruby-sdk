# frozen_string_literal: true

module Privy
  module Models
    class TelegramAuthResult < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Float, nil]
      required :id, Float, nil?: true

      # @!attribute auth_date
      #
      #   @return [Float, nil]
      required :auth_date, Float, nil?: true

      # @!attribute first_name
      #
      #   @return [String]
      required :first_name, String

      # @!attribute hash_
      #
      #   @return [String]
      required :hash_, String, api_name: :hash

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

      # @!method initialize(id:, auth_date:, first_name:, hash_:, last_name: nil, photo_url: nil, username: nil)
      #   Auth result object returned by Telegram when a user authenticates using the
      #   login widget.
      #
      #   @param id [Float, nil]
      #   @param auth_date [Float, nil]
      #   @param first_name [String]
      #   @param hash_ [String]
      #   @param last_name [String]
      #   @param photo_url [String]
      #   @param username [String]
    end
  end
end
