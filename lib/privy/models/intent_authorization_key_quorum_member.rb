# frozen_string_literal: true

module Privy
  module Models
    # A leaf member (user or key) of a nested key quorum in an intent authorization.
    module IntentAuthorizationKeyQuorumMember
      extend Privy::Internal::Type::Union

      variant -> { Privy::IntentAuthorizationKeyQuorumMember::UserMember }

      variant -> { Privy::IntentAuthorizationKeyQuorumMember::KeyMember }

      class UserMember < Privy::Internal::Type::BaseModel
        # @!attribute signed_at
        #   Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @return [Float, nil]
        required :signed_at, Float, nil?: true

        # @!attribute type
        #
        #   @return [Symbol, Privy::Models::IntentAuthorizationKeyQuorumMember::UserMember::Type]
        required :type, enum: -> { Privy::IntentAuthorizationKeyQuorumMember::UserMember::Type }

        # @!attribute user_id
        #   User ID of the key quorum member
        #
        #   @return [String]
        required :user_id, String

        # @!method initialize(signed_at:, type:, user_id:)
        #   @param signed_at [Float, nil] Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @param type [Symbol, Privy::Models::IntentAuthorizationKeyQuorumMember::UserMember::Type]
        #
        #   @param user_id [String] User ID of the key quorum member

        # @see Privy::Models::IntentAuthorizationKeyQuorumMember::UserMember#type
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
        #   @return [Symbol, Privy::Models::IntentAuthorizationKeyQuorumMember::KeyMember::Type]
        required :type, enum: -> { Privy::IntentAuthorizationKeyQuorumMember::KeyMember::Type }

        # @!method initialize(public_key:, signed_at:, type:)
        #   @param public_key [String] Public key of the key quorum member
        #
        #   @param signed_at [Float, nil] Unix timestamp when this member signed, or null if not yet signed.
        #
        #   @param type [Symbol, Privy::Models::IntentAuthorizationKeyQuorumMember::KeyMember::Type]

        # @see Privy::Models::IntentAuthorizationKeyQuorumMember::KeyMember#type
        module Type
          extend Privy::Internal::Type::Enum

          KEY = :key

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @!method self.variants
      #   @return [Array(Privy::Models::IntentAuthorizationKeyQuorumMember::UserMember, Privy::Models::IntentAuthorizationKeyQuorumMember::KeyMember)]
    end
  end
end
