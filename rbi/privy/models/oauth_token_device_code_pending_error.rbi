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

      # Error codes for the device authorization pending response per RFC 8628.
      sig { returns(Privy::OAuthTokenDeviceCodePendingErrorCode::OrSymbol) }
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
          error: Privy::OAuthTokenDeviceCodePendingErrorCode::OrSymbol,
          error_description: String,
          interval: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Error codes for the device authorization pending response per RFC 8628.
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
            error: Privy::OAuthTokenDeviceCodePendingErrorCode::OrSymbol,
            error_description: String,
            interval: Float
          }
        )
      end
      def to_hash
      end
    end
  end
end
