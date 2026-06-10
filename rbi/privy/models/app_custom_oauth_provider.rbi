# typed: strong

module Privy
  module Models
    class AppCustomOAuthProvider < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AppCustomOAuthProvider, Privy::Internal::AnyHash)
        end

      sig { returns(T::Boolean) }
      attr_accessor :enabled

      # The ID of a custom OAuth provider, set up for this app. Must start with
      # "custom:".
      sig { returns(String) }
      attr_accessor :provider

      sig { returns(String) }
      attr_accessor :provider_display_name

      sig { returns(String) }
      attr_accessor :provider_icon_url

      # A custom OAuth provider configured for an app.
      sig do
        params(
          enabled: T::Boolean,
          provider: String,
          provider_display_name: String,
          provider_icon_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        enabled:,
        # The ID of a custom OAuth provider, set up for this app. Must start with
        # "custom:".
        provider:,
        provider_display_name:,
        provider_icon_url:
      )
      end

      sig do
        override.returns(
          {
            enabled: T::Boolean,
            provider: String,
            provider_display_name: String,
            provider_icon_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
