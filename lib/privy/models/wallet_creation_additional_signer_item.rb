# frozen_string_literal: true

module Privy
  module Models
    class WalletCreationAdditionalSignerItem < Privy::Internal::Type::BaseModel
      # @!attribute signer_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :signer_id, String

      # @!attribute override_policy_ids
      #   The array of policy IDs that will be applied to wallet requests. If specified,
      #   this will override the base policy IDs set on the wallet. Currently, only one
      #   policy is supported per signer.
      #
      #   @return [Array<String>, nil]
      optional :override_policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(signer_id:, override_policy_ids: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::WalletCreationAdditionalSignerItem} for more details.
      #
      #   An additional signer configuration for a wallet.
      #
      #   @param signer_id [String] A unique identifier for a key quorum.
      #
      #   @param override_policy_ids [Array<String>] The array of policy IDs that will be applied to wallet requests. If specified, t
    end
  end
end
