# typed: strong

module Privy
  module Models
    class OAuthTokenDeviceCodeRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OAuthTokenDeviceCodeRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # The device code received from the device authorization endpoint.
      sig { returns(String) }
      attr_accessor :device_code

      sig do
        returns(Privy::OAuthTokenDeviceCodeRequestBody::GrantType::OrSymbol)
      end
      attr_accessor :grant_type

      # Request body for the urn:ietf:params:oauth:grant-type:device_code grant type
      # (RFC 8628). Used by CLI clients to poll for authorization.
      sig do
        params(
          device_code: String,
          grant_type:
            Privy::OAuthTokenDeviceCodeRequestBody::GrantType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The device code received from the device authorization endpoint.
        device_code:,
        grant_type:
      )
      end

      sig do
        override.returns(
          {
            device_code: String,
            grant_type:
              Privy::OAuthTokenDeviceCodeRequestBody::GrantType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module GrantType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::OAuthTokenDeviceCodeRequestBody::GrantType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        URN_IETF_PARAMS_OAUTH_GRANT_TYPE_DEVICE_CODE =
          T.let(
            :"urn:ietf:params:oauth:grant-type:device_code",
            Privy::OAuthTokenDeviceCodeRequestBody::GrantType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::OAuthTokenDeviceCodeRequestBody::GrantType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
