# typed: strong

module Privy
  module Resources
    # Operations related to key quorums
    class KeyQuorums
      # Create a new key quorum.
      sig do
        params(
          authorization_threshold: Float,
          display_name: String,
          key_quorum_ids: T::Array[String],
          public_keys: T::Array[String],
          user_ids: T::Array[String],
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::KeyQuorum)
      end
      def create(
        # The number of keys that must sign for an action to be valid. Must be less than
        # or equal to total number of key quorum members.
        authorization_threshold: nil,
        display_name: nil,
        # List of key quorum IDs that should be members of this key quorum. Key quorums
        # can only be nested 1 level deep. At least one of `user_ids`, `public_keys`, or
        # `key_quorum_ids` is required.
        key_quorum_ids: nil,
        # List of P-256 public keys of the keys that should be authorized to sign on the
        # key quorum, in base64-encoded DER format. At least one of `user_ids`,
        # `public_keys`, or `key_quorum_ids` is required.
        public_keys: nil,
        # List of user IDs of the users that should be authorized to sign on the key
        # quorum. At least one of `user_ids`, `public_keys`, or `key_quorum_ids` is
        # required.
        user_ids: nil,
        request_options: {}
      )
      end

      # Update a key quorum by key quorum ID.
      sig do
        params(
          key_quorum_id: String,
          authorization_threshold: Float,
          display_name: String,
          key_quorum_ids: T::Array[String],
          public_keys: T::Array[String],
          user_ids: T::Array[String],
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::KeyQuorum)
      end
      def update(
        # Path param: A unique identifier for a key quorum.
        key_quorum_id,
        # Body param: The number of keys that must sign for an action to be valid. Must be
        # less than or equal to total number of key quorum members.
        authorization_threshold: nil,
        # Body param
        display_name: nil,
        # Body param: List of key quorum IDs that should be members of this key quorum.
        # Key quorums can only be nested 1 level deep.
        key_quorum_ids: nil,
        # Body param: List of P-256 public keys of the keys that should be authorized to
        # sign on the key quorum, in base64-encoded DER format.
        public_keys: nil,
        # Body param: List of user IDs of the users that should be authorized to sign on
        # the key quorum.
        user_ids: nil,
        # Header param: Request authorization signature. If multiple signatures are
        # required, they should be comma separated.
        privy_authorization_signature: nil,
        # Header param: Request expiry. Value is a Unix timestamp in milliseconds
        # representing the deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Delete a key quorum by key quorum ID.
      sig do
        params(
          key_quorum_id: String,
          privy_authorization_signature: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::SuccessResponse)
      end
      def delete(
        # A unique identifier for a key quorum.
        key_quorum_id,
        # Request authorization signature. If multiple signatures are required, they
        # should be comma separated.
        privy_authorization_signature: nil,
        # Request expiry. Value is a Unix timestamp in milliseconds representing the
        # deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      # Get a key quorum by ID.
      sig do
        params(
          key_quorum_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::KeyQuorum)
      end
      def get(
        # A unique identifier for a key quorum.
        key_quorum_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
