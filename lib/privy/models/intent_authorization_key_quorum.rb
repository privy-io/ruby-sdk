# frozen_string_literal: true

module Privy
  module Models
    class IntentAuthorizationKeyQuorum < Privy::Internal::Type::BaseModel
      # @!attribute key_quorum_id
      #   ID of the child key quorum member
      #
      #   @return [String]
      required :key_quorum_id, String

      # @!attribute members
      #   Members of this child quorum
      #
      #   @return [Array<Privy::Models::IntentAuthorizationUserMember, Privy::Models::IntentAuthorizationKeyMember>]
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
      #   @return [Symbol, Privy::Models::IntentAuthorizationKeyQuorum::Type]
      required :type, enum: -> { Privy::IntentAuthorizationKeyQuorum::Type }

      # @!attribute display_name
      #   Display name for the child key quorum (if any)
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!method initialize(key_quorum_id:, members:, threshold:, threshold_met:, type:, display_name: nil)
      #   A nested key quorum member of an intent authorization quorum.
      #
      #   @param key_quorum_id [String] ID of the child key quorum member
      #
      #   @param members [Array<Privy::Models::IntentAuthorizationUserMember, Privy::Models::IntentAuthorizationKeyMember>] Members of this child quorum
      #
      #   @param threshold [Float] Number of signatures required from this child quorum
      #
      #   @param threshold_met [Boolean] Whether this child key quorum has met its signature threshold
      #
      #   @param type [Symbol, Privy::Models::IntentAuthorizationKeyQuorum::Type]
      #
      #   @param display_name [String] Display name for the child key quorum (if any)

      # @see Privy::Models::IntentAuthorizationKeyQuorum#type
      module Type
        extend Privy::Internal::Type::Enum

        KEY_QUORUM = :key_quorum

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
