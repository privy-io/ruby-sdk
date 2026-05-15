# frozen_string_literal: true

module Privy
  module Models
    class KeyQuorumUpdateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute authorization_threshold
      #   The number of keys that must sign for an action to be valid. Must be less than
      #   or equal to total number of key quorum members.
      #
      #   @return [Float, nil]
      optional :authorization_threshold, Float

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute key_quorum_ids
      #   List of key quorum IDs that should be members of this key quorum. Key quorums
      #   can only be nested 1 level deep.
      #
      #   @return [Array<String>, nil]
      optional :key_quorum_ids, Privy::Internal::Type::ArrayOf[String]

      # @!attribute public_keys
      #   List of P-256 public keys of the keys that should be authorized to sign on the
      #   key quorum, in base64-encoded DER format.
      #
      #   @return [Array<String>, nil]
      optional :public_keys, Privy::Internal::Type::ArrayOf[String]

      # @!attribute user_ids
      #   List of user IDs of the users that should be authorized to sign on the key
      #   quorum.
      #
      #   @return [Array<String>, nil]
      optional :user_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(authorization_threshold: nil, display_name: nil, key_quorum_ids: nil, public_keys: nil, user_ids: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::KeyQuorumUpdateRequestBody} for more details.
      #
      #   Request input for updating an existing key quorum. At least one field must be
      #   provided.
      #
      #   @param authorization_threshold [Float] The number of keys that must sign for an action to be valid. Must be less than o
      #
      #   @param display_name [String]
      #
      #   @param key_quorum_ids [Array<String>] List of key quorum IDs that should be members of this key quorum. Key quorums ca
      #
      #   @param public_keys [Array<String>] List of P-256 public keys of the keys that should be authorized to sign on the k
      #
      #   @param user_ids [Array<String>] List of user IDs of the users that should be authorized to sign on the key quoru
    end
  end
end
