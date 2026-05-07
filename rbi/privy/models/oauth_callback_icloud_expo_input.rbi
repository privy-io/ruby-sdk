# typed: strong

module Privy
  module Models
    class OAuthCallbackICloudExpoInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OAuthCallbackICloudExpoInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :ck_web_auth_token

      # The input for the iCloud Expo OAuth callback.
      sig { params(ck_web_auth_token: String).returns(T.attached_class) }
      def self.new(ck_web_auth_token:)
      end

      sig { override.returns({ ck_web_auth_token: String }) }
      def to_hash
      end
    end
  end
end
