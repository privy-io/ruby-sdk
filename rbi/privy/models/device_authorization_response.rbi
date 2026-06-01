# typed: strong

module Privy
  module Models
    class DeviceAuthorizationResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DeviceAuthorizationResponse, Privy::Internal::AnyHash)
        end

      # A long-lived code used by the device to poll for authorization status.
      sig { returns(String) }
      attr_accessor :device_code

      # The lifetime in seconds of the device_code and user_code.
      sig { returns(Integer) }
      attr_accessor :expires_in

      # The minimum number of seconds the device should wait between polling requests.
      sig { returns(Integer) }
      attr_accessor :interval

      # A short code displayed to the user, who enters it at the verification URI to
      # authorize the device.
      sig { returns(String) }
      attr_accessor :user_code

      # The URI where the user navigates to enter the user_code.
      sig { returns(String) }
      attr_accessor :verification_uri

      # The verification URI with the user_code pre-filled as a query parameter.
      sig { returns(String) }
      attr_accessor :verification_uri_complete

      # Response from the device authorization endpoint per RFC 8628. Contains codes and
      # URIs for the device flow.
      sig do
        params(
          device_code: String,
          expires_in: Integer,
          interval: Integer,
          user_code: String,
          verification_uri: String,
          verification_uri_complete: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A long-lived code used by the device to poll for authorization status.
        device_code:,
        # The lifetime in seconds of the device_code and user_code.
        expires_in:,
        # The minimum number of seconds the device should wait between polling requests.
        interval:,
        # A short code displayed to the user, who enters it at the verification URI to
        # authorize the device.
        user_code:,
        # The URI where the user navigates to enter the user_code.
        verification_uri:,
        # The verification URI with the user_code pre-filled as a query parameter.
        verification_uri_complete:
      )
      end

      sig do
        override.returns(
          {
            device_code: String,
            expires_in: Integer,
            interval: Integer,
            user_code: String,
            verification_uri: String,
            verification_uri_complete: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
