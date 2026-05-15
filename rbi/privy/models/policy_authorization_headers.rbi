# typed: strong

module Privy
  module Models
    class PolicyAuthorizationHeaders < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PolicyAuthorizationHeaders, Privy::Internal::AnyHash)
        end

      # ID of your Privy app.
      sig { returns(String) }
      attr_accessor :privy_app_id

      # Request authorization signature. If multiple signatures are required, they
      # should be comma separated.
      sig { returns(T.nilable(String)) }
      attr_reader :privy_authorization_signature

      sig { params(privy_authorization_signature: String).void }
      attr_writer :privy_authorization_signature

      # Request expiry. Value is a Unix timestamp in milliseconds representing the
      # deadline by which the request must be processed.
      sig { returns(T.nilable(String)) }
      attr_reader :privy_request_expiry

      sig { params(privy_request_expiry: String).void }
      attr_writer :privy_request_expiry

      # Headers required to authorize modifications to policies.
      sig do
        params(
          privy_app_id: String,
          privy_authorization_signature: String,
          privy_request_expiry: String
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of your Privy app.
        privy_app_id:,
        # Request authorization signature. If multiple signatures are required, they
        # should be comma separated.
        privy_authorization_signature: nil,
        # Request expiry. Value is a Unix timestamp in milliseconds representing the
        # deadline by which the request must be processed.
        privy_request_expiry: nil
      )
      end

      sig do
        override.returns(
          {
            privy_app_id: String,
            privy_authorization_signature: String,
            privy_request_expiry: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
