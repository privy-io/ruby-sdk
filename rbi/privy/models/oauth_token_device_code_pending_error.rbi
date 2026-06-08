# typed: strong

module Privy
  module Models
    class OAuthTokenDeviceCodePendingError < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::OAuthTokenDeviceCodePendingError,
            Privy::Internal::AnyHash
          )
        end

      # The error code indicating why the token request failed.
      sig { returns(Privy::OAuthTokenDeviceCodePendingError::Error::OrSymbol) }
      attr_accessor :error

      # Human-readable description of the error.
      sig { returns(T.nilable(String)) }
      attr_reader :error_description

      sig { params(error_description: String).void }
      attr_writer :error_description

      # The minimum polling interval in seconds.
      sig { returns(T.nilable(Float)) }
      attr_reader :interval

      sig { params(interval: Float).void }
      attr_writer :interval

      # Error response returned while the device authorization is still pending (RFC
      # 8628 Section 3.5).
      sig do
        params(
          error: Privy::OAuthTokenDeviceCodePendingError::Error::OrSymbol,
          error_description: String,
          interval: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # The error code indicating why the token request failed.
        error:,
        # Human-readable description of the error.
        error_description: nil,
        # The minimum polling interval in seconds.
        interval: nil
      )
      end

      sig do
        override.returns(
          {
            error: Privy::OAuthTokenDeviceCodePendingError::Error::OrSymbol,
            error_description: String,
            interval: Float
          }
        )
      end
      def to_hash
      end

      # The error code indicating why the token request failed.
      module Error
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::OAuthTokenDeviceCodePendingError::Error)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AUTHORIZATION_PENDING =
          T.let(
            :authorization_pending,
            Privy::OAuthTokenDeviceCodePendingError::Error::TaggedSymbol
          )
        SLOW_DOWN =
          T.let(
            :slow_down,
            Privy::OAuthTokenDeviceCodePendingError::Error::TaggedSymbol
          )
        ACCESS_DENIED =
          T.let(
            :access_denied,
            Privy::OAuthTokenDeviceCodePendingError::Error::TaggedSymbol
          )
        EXPIRED_TOKEN =
          T.let(
            :expired_token,
            Privy::OAuthTokenDeviceCodePendingError::Error::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::OAuthTokenDeviceCodePendingError::Error::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
