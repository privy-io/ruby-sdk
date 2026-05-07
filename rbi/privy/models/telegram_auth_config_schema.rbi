# typed: strong

module Privy
  module Models
    class TelegramAuthConfigSchema < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TelegramAuthConfigSchema, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :bot_id

      sig { returns(String) }
      attr_accessor :bot_name

      sig { returns(T::Boolean) }
      attr_accessor :link_enabled

      sig { returns(T::Boolean) }
      attr_accessor :seamless_auth_enabled

      # Configuration for Telegram authentication.
      sig do
        params(
          bot_id: String,
          bot_name: String,
          link_enabled: T::Boolean,
          seamless_auth_enabled: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(bot_id:, bot_name:, link_enabled:, seamless_auth_enabled:)
      end

      sig do
        override.returns(
          {
            bot_id: String,
            bot_name: String,
            link_enabled: T::Boolean,
            seamless_auth_enabled: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
