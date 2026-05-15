# frozen_string_literal: true

module Privy
  module Models
    # A member of an intent authorization quorum. Can be a user, key, or nested key
    # quorum.
    module IntentAuthorizationMember
      extend Privy::Internal::Type::Union

      variant -> { Privy::IntentAuthorizationMember::UserMember }

      variant -> { Privy::IntentAuthorizationMember::KeyMember }

      variant -> { Privy::IntentAuthorizationMember::KeyQuorumMember }

      class UserMember < Privy::Internal::Type::BaseModel
        # @!attribute signed_at
        #   Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @return [Float, nil]
        required :signed_at, Float, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::IntentAuthorizationMember::UserMember::Type]
        required :type, enum: -> { Privy::IntentAuthorizationMember::UserMember::Type }

        # @!attribute user_id
        #   User ID of the key quorum member
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(signed_at:, type:, user_id:)
        #   @param signed_at [Float, nil] Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @param type [Symbol, Privy::Models::IntentAuthorizationMember::UserMember::Type]
        #
        #   @param user_id [String] User ID of the key quorum member

        # @see Privy::Models::IntentAuthorizationMember::UserMember#type
        module Type
          extend Privy::Internal::Type::Enum

          USER = :user

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class KeyMember < Privy::Internal::Type::BaseModel
        # @!attribute public_key
        #   Public key of the key quorum member
        #
        #   @return [String]
        required :public_key, String

        # @!attribute signed_at
        #   Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @return [Float, nil]
        required :signed_at, Float, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::IntentAuthorizationMember::KeyMember::Type]
        required :type, enum: -> { Privy::IntentAuthorizationMember::KeyMember::Type }

        # @!method initialize(public_key:, signed_at:, type:)
        #   @param public_key [String] Public key of the key quorum member
        #
        #   @param signed_at [Float, nil] Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @param type [Symbol, Privy::Models::IntentAuthorizationMember::KeyMember::Type]

        # @see Privy::Models::IntentAuthorizationMember::KeyMember#type
        module Type
          extend Privy::Internal::Type::Enum

          KEY = :key

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class KeyQuorumMember < Privy::Internal::Type::BaseModel
        # @!attribute key_quorum_id
        #   ID of the child key quorum member
        #
        #   @return [String]
        required :key_quorum_id, String

        # @!attribute members
        #   Members of this child quorum
        #
        #   @return [Array<Privy::Models::IntentAuthorizationKeyQuorumMember::UserMember, Privy::Models::IntentAuthorizationKeyQuorumMember::KeyMember>]
        required :members, -> { Privy::Internal::Type::ArrayOf[union: Privy::IntentAuthorizationKeyQuorumMember] }

        # @!attribute threshold
        #   Number of signatures required from this child quorum
        #
        #   @return [Float]
        required :threshold, Float

        # @!attribute threshold_met
        #   Whether this child key quorum has met its signature threshold
        #
        #   @return [Boolean]
        required :threshold_met, Privy::Internal::Type::Boolean

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::IntentAuthorizationMember::KeyQuorumMember::Type]
        required :type, enum: -> { Privy::IntentAuthorizationMember::KeyQuorumMember::Type }

        # @!attribute display_name
        #   Display name for the child key quorum (if any)
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!method initialize(key_quorum_id:, members:, threshold:, threshold_met:, type:, display_name: nil)
        #   @param key_quorum_id [String] ID of the child key quorum member
        #
        #   @param members [Array<Privy::Models::IntentAuthorizationKeyQuorumMember::UserMember, Privy::Models::IntentAuthorizationKeyQuorumMember::KeyMember>] Members of this child quorum
        #
        #   @param threshold [Float] Number of signatures required from this child quorum
        #
        #   @param threshold_met [Boolean] Whether this child key quorum has met its signature threshold
        #
        #   @param type [Symbol, Privy::Models::IntentAuthorizationMember::KeyQuorumMember::Type]
        #
        #   @param display_name [String] Display name for the child key quorum (if any)

        # @see Privy::Models::IntentAuthorizationMember::KeyQuorumMember#type
        module Type
          extend Privy::Internal::Type::Enum

          KEY_QUORUM = :key_quorum

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Privy::Models::IntentAuthorizationMember::UserMember, Privy::Models::IntentAuthorizationMember::KeyMember, Privy::Models::IntentAuthorizationMember::KeyQuorumMember)]
    end
  end
end
