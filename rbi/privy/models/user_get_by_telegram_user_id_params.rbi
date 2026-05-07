# typed: strong

module Privy
  module Models
    class UserGetByTelegramUserIDParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserGetByTelegramUserIDParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :telegram_user_id

      sig do
        params(
          telegram_user_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(telegram_user_id:, request_options: {})
      end

      sig do
        override.returns(
          { telegram_user_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
