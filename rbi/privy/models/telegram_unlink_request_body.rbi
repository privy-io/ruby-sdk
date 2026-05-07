# typed: strong

module Privy
  module Models
    class TelegramUnlinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TelegramUnlinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :telegram_user_id

      # The request body for unlinking a Telegram account.
      sig { params(telegram_user_id: String).returns(T.attached_class) }
      def self.new(telegram_user_id:)
      end

      sig { override.returns({ telegram_user_id: String }) }
      def to_hash
      end
    end
  end
end
