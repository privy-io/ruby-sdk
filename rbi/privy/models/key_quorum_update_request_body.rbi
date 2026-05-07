# typed: strong

module Privy
  module Models
    class KeyQuorumUpdateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumUpdateRequestBody, Privy::Internal::AnyHash)
        end

      # The number of keys that must sign for an action to be valid. Must be less than
      # or equal to total number of key quorum members.
      sig { returns(T.nilable(Float)) }
      attr_reader :authorization_threshold

      sig { params(authorization_threshold: Float).void }
      attr_writer :authorization_threshold

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # List of key quorum IDs that should be members of this key quorum. Key quorums
      # can only be nested 1 level deep.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :key_quorum_ids

      sig { params(key_quorum_ids: T::Array[String]).void }
      attr_writer :key_quorum_ids

      # List of P-256 public keys of the keys that should be authorized to sign on the
      # key quorum, in base64-encoded DER format.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :public_keys

      sig { params(public_keys: T::Array[String]).void }
      attr_writer :public_keys

      # List of user IDs of the users that should be authorized to sign on the key
      # quorum.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :user_ids

      sig { params(user_ids: T::Array[String]).void }
      attr_writer :user_ids

      # Request input for updating an existing key quorum.
      sig do
        params(
          authorization_threshold: Float,
          display_name: String,
          key_quorum_ids: T::Array[String],
          public_keys: T::Array[String],
          user_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        # The number of keys that must sign for an action to be valid. Must be less than
        # or equal to total number of key quorum members.
        authorization_threshold: nil,
        display_name: nil,
        # List of key quorum IDs that should be members of this key quorum. Key quorums
        # can only be nested 1 level deep.
        key_quorum_ids: nil,
        # List of P-256 public keys of the keys that should be authorized to sign on the
        # key quorum, in base64-encoded DER format.
        public_keys: nil,
        # List of user IDs of the users that should be authorized to sign on the key
        # quorum.
        user_ids: nil
      )
      end

      sig do
        override.returns(
          {
            authorization_threshold: Float,
            display_name: String,
            key_quorum_ids: T::Array[String],
            public_keys: T::Array[String],
            user_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end
    end
  end
end
