# typed: strong

module Privy
  module Models
    class KeyQuorumDeleteParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumDeleteParams, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :key_quorum_id

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

      sig do
        params(
          key_quorum_id: String,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a key quorum.
        key_quorum_id:,
        # Request authorization signature. If multiple signatures are required, they
        # should be comma separated.
        privy_authorization_signature: nil,
        # Request expiry. Value is a Unix timestamp in milliseconds representing the
        # deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            key_quorum_id: String,
            privy_authorization_signature: String,
            privy_request_expiry: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
