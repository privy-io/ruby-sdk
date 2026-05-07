# typed: strong

module Privy
  module Models
    class TelegramAuthResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TelegramAuthResult, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :id

      sig { returns(T.nilable(Float)) }
      attr_accessor :auth_date

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :hash_

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

      # Auth result object returned by Telegram when a user authenticates using the
      # login widget.
      sig do
        params(
          id: T.nilable(Float),
          auth_date: T.nilable(Float),
          first_name: String,
          hash_: String,
          last_name: String,
          photo_url: String,
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        auth_date:,
        first_name:,
        hash_:,
        last_name: nil,
        photo_url: nil,
        username: nil
      )
      end

      sig do
        override.returns(
          {
            id: T.nilable(Float),
            auth_date: T.nilable(Float),
            first_name: String,
            hash_: String,
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
