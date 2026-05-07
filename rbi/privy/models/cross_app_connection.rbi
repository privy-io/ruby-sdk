# typed: strong

module Privy
  module Models
    class CrossAppConnection < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CrossAppConnection, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :provider_app_custom_api_url

      sig { returns(T.nilable(String)) }
      attr_accessor :provider_app_custom_auth_authorize_url

      sig { returns(T.nilable(String)) }
      attr_accessor :provider_app_custom_auth_transact_url

      sig { returns(T.nilable(String)) }
      attr_accessor :provider_app_icon_url

      sig { returns(String) }
      attr_accessor :provider_app_id

      sig { returns(String) }
      attr_accessor :provider_app_name

      sig { returns(T::Boolean) }
      attr_accessor :read_only

      # A cross-app connection definition
      sig do
        params(
          provider_app_custom_api_url: T.nilable(String),
          provider_app_custom_auth_authorize_url: T.nilable(String),
          provider_app_custom_auth_transact_url: T.nilable(String),
          provider_app_icon_url: T.nilable(String),
          provider_app_id: String,
          provider_app_name: String,
          read_only: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        provider_app_custom_api_url:,
        provider_app_custom_auth_authorize_url:,
        provider_app_custom_auth_transact_url:,
        provider_app_icon_url:,
        provider_app_id:,
        provider_app_name:,
        read_only:
      )
      end

      sig do
        override.returns(
          {
            provider_app_custom_api_url: T.nilable(String),
            provider_app_custom_auth_authorize_url: T.nilable(String),
            provider_app_custom_auth_transact_url: T.nilable(String),
            provider_app_icon_url: T.nilable(String),
            provider_app_id: String,
            provider_app_name: String,
            read_only: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
