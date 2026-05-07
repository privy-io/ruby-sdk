# frozen_string_literal: true

module Privy
  module Models
    class WalletAdditionalSignerItem < Privy::Internal::Type::BaseModel
      # @!attribute signer_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :signer_id, String

      # @!attribute override_policy_ids
      #   An optional list of up to one policy ID to enforce on the wallet.
      #
      #   @return [Array<String>, nil]
      optional :override_policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(signer_id:, override_policy_ids: nil)
      #   A single additional signer on a wallet, with an optional policy override.
      #
      #   @param signer_id [String] A unique identifier for a key quorum.
      #
      #   @param override_policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
    end
  end
end
