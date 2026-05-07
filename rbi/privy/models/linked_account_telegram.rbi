# typed: strong

module Privy
  module Models
    class LinkedAccountTelegram < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountTelegram, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :telegram_user_id

      sig { returns(Privy::LinkedAccountTelegram::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(T.nilable(String)) }
      attr_accessor :first_name

      sig { returns(T.nilable(String)) }
      attr_accessor :last_name

      sig { returns(T.nilable(String)) }
      attr_accessor :photo_url

      sig { returns(T.nilable(String)) }
      attr_accessor :username

      # A Telegram account linked to the user.
      sig do
        params(
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          telegram_user_id: String,
          type: Privy::LinkedAccountTelegram::Type::OrSymbol,
          verified_at: Float,
          first_name: T.nilable(String),
          last_name: T.nilable(String),
          photo_url: T.nilable(String),
          username: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        first_verified_at:,
        latest_verified_at:,
        telegram_user_id:,
        type:,
        verified_at:,
        first_name: nil,
        last_name: nil,
        photo_url: nil,
        username: nil
      )
      end

      sig do
        override.returns(
          {
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            telegram_user_id: String,
            type: Privy::LinkedAccountTelegram::Type::TaggedSymbol,
            verified_at: Float,
            first_name: T.nilable(String),
            last_name: T.nilable(String),
            photo_url: T.nilable(String),
            username: T.nilable(String)
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountTelegram::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELEGRAM =
          T.let(:telegram, Privy::LinkedAccountTelegram::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountTelegram::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
