# frozen_string_literal: true

module Privy
  module Models
    class LinkedAccountTelegram < Privy::Internal::Type::BaseModel
      # @!attribute first_verified_at
      #
      #   @return [Float, nil]
      required :first_verified_at, Float, nil?: true

      # @!attribute latest_verified_at
      #
      #   @return [Float, nil]
      required :latest_verified_at, Float, nil?: true

      # @!attribute telegram_user_id
      #
      #   @return [String]
      required :telegram_user_id, String

      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::LinkedAccountTelegram::Type]
      required :type, enum: -> { Privy::LinkedAccountTelegram::Type }

      # @!attribute verified_at
      #
      #   @return [Float]
      required :verified_at, Float

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String, nil?: true

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String, nil?: true

      # @!attribute photo_url
      #
      #   @return [String, nil]
      optional :photo_url, String, nil?: true

      # @!attribute username
      #
      #   @return [String, nil]
      optional :username, String, nil?: true

      # @!method initialize(first_verified_at:, latest_verified_at:, telegram_user_id:, type:, verified_at:, first_name: nil, last_name: nil, photo_url: nil, username: nil)
      #   A Telegram account linked to the user.
      #
      #   @param first_verified_at [Float, nil]
      #   @param latest_verified_at [Float, nil]
      #   @param telegram_user_id [String]
      #   @param type [Symbol, Privy::Models::LinkedAccountTelegram::Type]
      #   @param verified_at [Float]
      #   @param first_name [String, nil]
      #   @param last_name [String, nil]
      #   @param photo_url [String, nil]
      #   @param username [String, nil]

      # @see Privy::Models::LinkedAccountTelegram#type
      module Type
        extend Privy::Internal::Type::Enum

        TELEGRAM = :telegram

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
