# frozen_string_literal: true

module Privy
  module Models
    class OAuthTokenDeviceCodePendingError < Privy::Internal::Type::BaseModel
      # @!attribute error
      #   Error codes for the device authorization pending response per RFC 8628.
      #
      #   @return [Symbol, Privy::Models::OAuthTokenDeviceCodePendingErrorCode]
      required :error, enum: -> { Privy::OAuthTokenDeviceCodePendingErrorCode }

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
      #   @param error [Symbol, Privy::Models::OAuthTokenDeviceCodePendingErrorCode] Error codes for the device authorization pending response per RFC 8628.
      #
      #   @param error_description [String] Human-readable description of the error.
      #
      #   @param interval [Float] The minimum polling interval in seconds.
    end
  end
end
