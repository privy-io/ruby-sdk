# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokenDeviceCodePendingError < Privy::Internal::Type::BaseModel
      # @!attribute error
      #   The error code indicating why the token request failed.
      #
      #   @return [Symbol, Privy::Models::OAuthTokenDeviceCodePendingError::Error]
      required :error, enum: -> { Privy::OAuthTokenDeviceCodePendingError::Error }

      # @!attribute error_description
      #   Human-readable description of the error.
      #
      #   @return [String, nil]
      optional :error_description, String

      # @!attribute interval
      #   The minimum polling interval in seconds.
      #
      #   @return [Float, nil]
      optional :interval, Float

      # @!method initialize(error:, error_description: nil, interval: nil)
      #   Error response returned while the device authorization is still pending (RFC
      #   8628 Section 3.5).
      #
      #   @param error [Symbol, Privy::Models::OAuthTokenDeviceCodePendingError::Error] The error code indicating why the token request failed.
      #
      #   @param error_description [String] Human-readable description of the error.
      #
      #   @param interval [Float] The minimum polling interval in seconds.

      # The error code indicating why the token request failed.
      #
      # @see Privy::Models::OAuthTokenDeviceCodePendingError#error
      module Error
        extend Privy::Internal::Type::Enum

        AUTHORIZATION_PENDING = :authorization_pending
        SLOW_DOWN = :slow_down
        ACCESS_DENIED = :access_denied
        EXPIRED_TOKEN = :expired_token

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
