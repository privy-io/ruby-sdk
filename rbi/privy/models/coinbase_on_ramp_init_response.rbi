# typed: strong

module Privy
  module Models
    class CoinbaseOnRampInitResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CoinbaseOnRampInitResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :app_id

      sig { returns(String) }
      attr_accessor :channel_id

      sig { returns(String) }
      attr_accessor :partner_user_id

      sig { returns(String) }
      attr_accessor :session_token

      # The response from initializing a Coinbase on-ramp session.
      sig do
        params(
          app_id: String,
          channel_id: String,
          partner_user_id: String,
          session_token: String
        ).returns(T.attached_class)
      end
      def self.new(app_id:, channel_id:, partner_user_id:, session_token:)
      end

      sig do
        override.returns(
          {
            app_id: String,
            channel_id: String,
            partner_user_id: String,
            session_token: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
