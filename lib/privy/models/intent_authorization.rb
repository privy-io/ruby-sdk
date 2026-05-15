# frozen_string_literal: true

module Privy
  module Models
    class IntentAuthorization < Privy::Internal::Type::BaseModel
      # @!attribute members
      #   Members in this authorization quorum
      #
      #   @return [Array<Privy::Models::IntentAuthorizationMember::UserMember, Privy::Models::IntentAuthorizationMember::KeyMember, Privy::Models::IntentAuthorizationMember::KeyQuorumMember>]
      required :members, -> { Privy::Internal::Type::ArrayOf[union: Privy::IntentAuthorizationMember] }

      # @!attribute threshold
      #   Number of signatures required to satisfy this quorum
      #
      #   @return [Float]
      required :threshold, Float

      # @!attribute display_name
      #   Display name of the key quorum
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!method initialize(members:, threshold:, display_name: nil)
      #   Authorization quorum for an intent
      #
      #   @param members [Array<Privy::Models::IntentAuthorizationMember::UserMember, Privy::Models::IntentAuthorizationMember::KeyMember, Privy::Models::IntentAuthorizationMember::KeyQuorumMember>] Members in this authorization quorum
      #
      #   @param threshold [Float] Number of signatures required to satisfy this quorum
      #
      #   @param display_name [String] Display name of the key quorum
    end
  end
end
