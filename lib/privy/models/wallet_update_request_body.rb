# frozen_string_literal: true

module Privy
  module Models
    class WalletUpdateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::AdditionalSignerItemInput>, nil]
      optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::AdditionalSignerItemInput] }

      # @!attribute display_name
      #   A human-readable label for the wallet. Set to null to clear.
      #
      #   @return [String, nil]
      optional :display_name, String, nil?: true

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

      # @!attribute policy_ids
      #   New policy IDs to enforce on the wallet. Currently, only one policy is supported
      #   per wallet.
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(additional_signers: nil, display_name: nil, owner: nil, owner_id: nil, policy_ids: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletUpdateRequestBody} for more details.
      #
      #   Request body for updating a wallet.
      #
      #   @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
      #
      #   @param display_name [String, nil] A human-readable label for the wallet. Set to null to clear.
      #
      #   @param owner [Privy::Models::OwnerInputUser, Privy::Models::OwnerInputPublicKey, nil] The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      #
      #   @param owner_id [String, nil] The key quorum ID to set as the owner of the resource. If you provide this, do n
      #
      #   @param policy_ids [Array<String>] New policy IDs to enforce on the wallet. Currently, only one policy is supported
    end
  end
end
