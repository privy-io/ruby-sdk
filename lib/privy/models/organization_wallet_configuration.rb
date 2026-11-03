# frozen_string_literal: true

module Privy
  module Models
    class OrganizationWalletConfiguration < Privy::Internal::Type::BaseModel
      # @!attribute additional_signers
      #   Additional signers for the wallet.
      #
      #   @return [Array<Privy::Models::AdditionalSignerItemInput>, nil]
      optional :additional_signers, -> { Privy::Internal::Type::ArrayOf[Privy::AdditionalSignerItemInput] }

      # @!attribute policy_ids
      #   An optional list of up to one policy ID to enforce on the wallet.
      #
      #   @return [Array<String>, nil]
      optional :policy_ids, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(additional_signers: nil, policy_ids: nil)
      #   Default policies and additional signers for wallets of one chain type.
      #
      #   @param additional_signers [Array<Privy::Models::AdditionalSignerItemInput>] Additional signers for the wallet.
      #
      #   @param policy_ids [Array<String>] An optional list of up to one policy ID to enforce on the wallet.
    end
  end
end
