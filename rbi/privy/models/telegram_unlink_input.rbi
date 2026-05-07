# typed: strong

module Privy
  module Models
    class TelegramUnlinkInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TelegramUnlinkInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :telegram_user_id

      # Input for unlinking a Telegram account.
      sig { params(telegram_user_id: String).returns(T.attached_class) }
      def self.new(telegram_user_id:)
      end

      sig { override.returns({ telegram_user_id: String }) }
      def to_hash
      end
    end
  end
end
