# frozen_string_literal: true

module Privy
  module Models
    class OrganizationCreateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute default_key_quorum_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String]
      required :default_key_quorum_id, String

      # @!attribute display_name
      #
      #   @return [String]
      required :display_name, String

      # @!attribute default_wallet_configurations
      #   Defaults applied to wallets created with the organization as their entity, keyed
      #   by chain type.
      #
      #   @return [Privy::Models::OrganizationDefaultWalletConfigurations, nil]
      optional :default_wallet_configurations, -> { Privy::OrganizationDefaultWalletConfigurations }

      # @!method initialize(default_key_quorum_id:, display_name:, default_wallet_configurations: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::OrganizationCreateRequestBody} for more details.
      #
      #   Request body for creating an organization.
      #
      #   @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      #   @param display_name [String]
      #
      #   @param default_wallet_configurations [Privy::Models::OrganizationDefaultWalletConfigurations] Defaults applied to wallets created with the organization as their entity, keyed
    end
  end
end
