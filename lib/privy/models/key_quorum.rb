# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::KeyQuorums#create
    class KeyQuorum < Privy::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute authorization_keys
      #
      #   @return [Array<Privy::Models::KeyQuorum::AuthorizationKey>]
      required :authorization_keys, -> { Privy::Internal::Type::ArrayOf[Privy::KeyQuorum::AuthorizationKey] }

      # @!attribute authorization_threshold
      #
      #   @return [Float, nil]
      required :authorization_threshold, Float, nil?: true

      # @!attribute display_name
      #
      #   @return [String, nil]
      required :display_name, String, nil?: true

      # @!attribute user_ids
      #
      #   @return [Array<String>, nil]
      required :user_ids, Privy::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute key_quorum_ids
      #   List of nested key quorum IDs that are members of this key quorum.
      #
      #   @return [Array<String>, nil]
      optional :key_quorum_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(id:, authorization_keys:, authorization_threshold:, display_name:, user_ids:, key_quorum_ids: nil)
      #   A key quorum for authorizing wallet operations.
      #
      #   @param id [String]
      #
      #   @param authorization_keys [Array<Privy::Models::KeyQuorum::AuthorizationKey>]
      #
      #   @param authorization_threshold [Float, nil]
      #
      #   @param display_name [String, nil]
      #
      #   @param user_ids [Array<String>, nil]
      #
      #   @param key_quorum_ids [Array<String>] List of nested key quorum IDs that are members of this key quorum.

      class AuthorizationKey < Privy::Internal::Type::BaseModel
        # @!attribute display_name
        #
        #   @return [String, nil]
        required :display_name, String, nil?: true

        # @!attribute public_key
        #
        #   @return [String]
        required :public_key, String

        # @!method initialize(display_name:, public_key:)
        #   @param display_name [String, nil]
        #   @param public_key [String]
      end
    end
  end
end
