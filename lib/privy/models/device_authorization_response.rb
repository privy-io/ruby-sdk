# frozen_string_literal: true

module Privy
  module Models
    class DeviceAuthorizationResponse < Privy::Internal::Type::BaseModel
      # @!attribute device_code
      #   A long-lived code used by the device to poll for authorization status.
      #
      #   @return [String]
      required :device_code, String

      # @!attribute expires_in
      #   The lifetime in seconds of the device_code and user_code.
      #
      #   @return [Integer]
      required :expires_in, Integer

      # @!attribute interval
      #   The minimum number of seconds the device should wait between polling requests.
      #
      #   @return [Integer]
      required :interval, Integer

      # @!attribute user_code
      #   A short code displayed to the user, who enters it at the verification URI to
      #   authorize the device.
      #
      #   @return [String]
      required :user_code, String

      # @!attribute verification_uri
      #   The URI where the user navigates to enter the user_code.
      #
      #   @return [String]
      required :verification_uri, String

      # @!attribute verification_uri_complete
      #   The verification URI with the user_code pre-filled as a query parameter.
      #
      #   @return [String]
      required :verification_uri_complete, String

      # @!method initialize(device_code:, expires_in:, interval:, user_code:, verification_uri:, verification_uri_complete:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::DeviceAuthorizationResponse} for more details.
      #
      #   Response from the device authorization endpoint per RFC 8628. Contains codes and
      #   URIs for the device flow.
      #
      #   @param device_code [String] A long-lived code used by the device to poll for authorization status.
      #
      #   @param expires_in [Integer] The lifetime in seconds of the device_code and user_code.
      #
      #   @param interval [Integer] The minimum number of seconds the device should wait between polling requests.
      #
      #   @param user_code [String] A short code displayed to the user, who enters it at the verification URI to aut
      #
      #   @param verification_uri [String] The URI where the user navigates to enter the user_code.
      #
      #   @param verification_uri_complete [String] The verification URI with the user_code pre-filled as a query parameter.
    end
  end
end
