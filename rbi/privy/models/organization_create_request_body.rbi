# typed: strong

module Privy
  module Models
    class OrganizationCreateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationCreateRequestBody, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :default_key_quorum_id

      sig { returns(String) }
      attr_accessor :display_name

      # Defaults applied to wallets created with the organization as their entity, keyed
      # by chain type.
      sig { returns(T.nilable(Privy::OrganizationDefaultWalletConfigurations)) }
      attr_reader :default_wallet_configurations

      sig do
        params(
          default_wallet_configurations:
            Privy::OrganizationDefaultWalletConfigurations::OrHash
        ).void
      end
      attr_writer :default_wallet_configurations

      # Request body for creating an organization.
      sig do
        params(
          default_key_quorum_id: String,
          display_name: String,
          default_wallet_configurations:
            Privy::OrganizationDefaultWalletConfigurations::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a key quorum.
        default_key_quorum_id:,
        display_name:,
        # Defaults applied to wallets created with the organization as their entity, keyed
        # by chain type.
        default_wallet_configurations: nil
      )
      end

      sig do
        override.returns(
          {
            default_key_quorum_id: String,
            display_name: String,
            default_wallet_configurations:
              Privy::OrganizationDefaultWalletConfigurations
          }
        )
      end
      def to_hash
      end
    end
  end
end
