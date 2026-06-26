# typed: strong

module Privy
  module Models
    # Error codes for the device authorization pending response per RFC 8628.
    module OAuthTokenDeviceCodePendingErrorCode
      extend Privy::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias do
          T.all(Symbol, Privy::OAuthTokenDeviceCodePendingErrorCode)
        end
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      AUTHORIZATION_PENDING =
        T.let(
          :authorization_pending,
          Privy::OAuthTokenDeviceCodePendingErrorCode::TaggedSymbol
        )
      SLOW_DOWN =
        T.let(
          :slow_down,
          Privy::OAuthTokenDeviceCodePendingErrorCode::TaggedSymbol
        )
      ACCESS_DENIED =
        T.let(
          :access_denied,
          Privy::OAuthTokenDeviceCodePendingErrorCode::TaggedSymbol
        )
      EXPIRED_TOKEN =
        T.let(
          :expired_token,
          Privy::OAuthTokenDeviceCodePendingErrorCode::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Privy::OAuthTokenDeviceCodePendingErrorCode::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
