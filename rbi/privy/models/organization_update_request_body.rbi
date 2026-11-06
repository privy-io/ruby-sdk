# typed: strong

module Privy
  module Models
    class OrganizationUpdateRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OrganizationUpdateRequestBody, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(T.nilable(String)) }
      attr_reader :default_key_quorum_id

      sig { params(default_key_quorum_id: String).void }
      attr_writer :default_key_quorum_id

      # Changes to the defaults, keyed by chain type. Omitted chains and fields are
      # unchanged, and `null` removes a chain.
      sig do
        returns(T.nilable(Privy::OrganizationDefaultWalletConfigurationsUpdate))
      end
      attr_reader :default_wallet_configurations

      sig do
        params(
          default_wallet_configurations:
            Privy::OrganizationDefaultWalletConfigurationsUpdate::OrHash
        ).void
      end
      attr_writer :default_wallet_configurations

      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # Request body for updating an organization.
      sig do
        params(
          default_key_quorum_id: String,
          default_wallet_configurations:
            Privy::OrganizationDefaultWalletConfigurationsUpdate::OrHash,
          display_name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a key quorum.
        default_key_quorum_id: nil,
        # Changes to the defaults, keyed by chain type. Omitted chains and fields are
        # unchanged, and `null` removes a chain.
        default_wallet_configurations: nil,
        display_name: nil
      )
      end

      sig do
        override.returns(
          {
            default_key_quorum_id: String,
            default_wallet_configurations:
              Privy::OrganizationDefaultWalletConfigurationsUpdate,
            display_name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
