# frozen_string_literal: true

module Privy
  module Models
    class OrganizationUpdateRequestBody < Privy::Internal::Type::BaseModel
      # @!attribute default_key_quorum_id
      #   A unique identifier for a key quorum.
      #
      #   @return [String, nil]
      optional :default_key_quorum_id, String

      # @!attribute default_wallet_configurations
      #   Changes to the defaults, keyed by chain type. Omitted chains and fields are
      #   unchanged, and `null` removes a chain.
      #
      #   @return [Privy::Models::OrganizationDefaultWalletConfigurationsUpdate, nil]
      optional :default_wallet_configurations, -> { Privy::OrganizationDefaultWalletConfigurationsUpdate }

      # @!attribute display_name
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!method initialize(default_key_quorum_id: nil, default_wallet_configurations: nil, display_name: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::OrganizationUpdateRequestBody} for more details.
      #
      #   Request body for updating an organization.
      #
      #   @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      #   @param default_wallet_configurations [Privy::Models::OrganizationDefaultWalletConfigurationsUpdate] Changes to the defaults, keyed by chain type. Omitted chains and fields are unch
      #
      #   @param display_name [String]
    end
  end
end
