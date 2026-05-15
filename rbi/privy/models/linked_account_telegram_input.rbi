# typed: strong

module Privy
  module Models
    class LinkedAccountTelegramInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountTelegramInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :telegram_user_id

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :first_name

      sig { params(first_name: String).void }
      attr_writer :first_name

      sig { returns(T.nilable(String)) }
      attr_reader :last_name

      sig { params(last_name: String).void }
      attr_writer :last_name

      sig { returns(T.nilable(String)) }
      attr_reader :photo_url

      sig { params(photo_url: String).void }
      attr_writer :photo_url

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # The payload for importing a Telegram account.
      sig do
        params(
          telegram_user_id: String,
          first_name: String,
          last_name: String,
          photo_url: String,
          username: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        telegram_user_id:,
        first_name: nil,
        last_name: nil,
        photo_url: nil,
        username: nil,
        type: :telegram
      )
      end

      sig do
        override.returns(
          {
            telegram_user_id: String,
            type: Symbol,
            first_name: String,
            last_name: String,
            photo_url: String,
            username: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
