# typed: strong

module Privy
  module Models
    class IntentCreationHeaders < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::IntentCreationHeaders, Privy::Internal::AnyHash)
        end

      # ID of your Privy app.
      sig { returns(String) }
      attr_accessor :privy_app_id

      # Request expiry. Value is a Unix timestamp in milliseconds representing the
      # deadline by which the request must be processed.
      sig { returns(T.nilable(String)) }
      attr_reader :privy_request_expiry

      sig { params(privy_request_expiry: String).void }
      attr_writer :privy_request_expiry

      # Headers required to create an intent.
      sig do
        params(privy_app_id: String, privy_request_expiry: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # ID of your Privy app.
        privy_app_id:,
        # Request expiry. Value is a Unix timestamp in milliseconds representing the
        # deadline by which the request must be processed.
        privy_request_expiry: nil
      )
      end

      sig do
        override.returns({ privy_app_id: String, privy_request_expiry: String })
      end
      def to_hash
      end
    end
  end
end
