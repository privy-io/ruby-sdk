# frozen_string_literal: true

module Privy
  module Models
    class ConditionSetRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute name
      #   Name to assign to condition set.
      #
      #   @return [String]
      required :name, String

      # @!attribute owner
      #   The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #   null to remove the current owner.
      #
      #   @return [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil]
      optional :owner, union: -> { Privy::OwnerInput }, nil?: true

      # @!attribute owner_id
      #   The key quorum ID to set as the owner of the resource. If you provide this, do
      #   not specify an owner.
      #
      #   @return [String, nil]
      optional :owner_id, String, nil?: true

      # @!method initialize(name:, owner: nil, owner_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ConditionSetRequestBody} for more details.
      #
      #   Request body for creating a condition set. Exactly one of `owner` or `owner_id`
      #   is required.
      #
      #   @param name [String] Name to assign to condition set.
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
    end
  end
end
