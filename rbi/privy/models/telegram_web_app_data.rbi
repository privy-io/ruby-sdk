# typed: strong

module Privy
  module Models
    class TelegramWebAppData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TelegramWebAppData, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :auth_date

      sig { returns(String) }
      attr_accessor :hash_

      sig { returns(String) }
      attr_accessor :user

      sig { returns(T.nilable(String)) }
      attr_reader :chat_instance

      sig { params(chat_instance: String).void }
      attr_writer :chat_instance

      sig { returns(T.nilable(String)) }
      attr_reader :chat_type

      sig { params(chat_type: String).void }
      attr_writer :chat_type

      sig { returns(T.nilable(String)) }
      attr_reader :query_id

      sig { params(query_id: String).void }
      attr_writer :query_id

      sig { returns(T.nilable(String)) }
      attr_reader :signature

      sig { params(signature: String).void }
      attr_writer :signature

      sig { returns(T.nilable(String)) }
      attr_reader :start_param

      sig { params(start_param: String).void }
      attr_writer :start_param

      # Auth result object returned by Telegram when a user authenticates using a mini
      # app.
      sig do
        params(
          auth_date: T.nilable(Float),
          hash_: String,
          user: String,
          chat_instance: String,
          chat_type: String,
          query_id: String,
          signature: String,
          start_param: String
        ).returns(T.attached_class)
      end
      def self.new(
        auth_date:,
        hash_:,
        user:,
        chat_instance: nil,
        chat_type: nil,
        query_id: nil,
        signature: nil,
        start_param: nil
      )
      end

      sig do
        override.returns(
          {
            auth_date: T.nilable(Float),
            hash_: String,
            user: String,
            chat_instance: String,
            chat_type: String,
            query_id: String,
            signature: String,
            start_param: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
