# typed: strong

module Privy
  module Resources
    # Operations related to organizations
    class Organizations
      # Operations related to fiat onramping and offramping
      sig { returns(Privy::Resources::Organizations::KYB) }
      attr_reader :kyb

      # Operations related to fiat onramping and offramping
      sig { returns(Privy::Resources::Organizations::ExternalFiatAccounts) }
      attr_reader :external_fiat_accounts

      # Create an organization in an app.
      sig do
        params(
          default_key_quorum_id: String,
          display_name: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Organization)
      end
      def create(
        # A unique identifier for a key quorum.
        default_key_quorum_id:,
        display_name:,
        request_options: {}
      )
      end

      # Update an organization by ID.
      sig do
        params(
          organization_id: String,
          default_key_quorum_id: String,
          display_name: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Organization)
      end
      def update(
        # ID of the organization.
        organization_id,
        # A unique identifier for a key quorum.
        default_key_quorum_id: nil,
        display_name: nil,
        request_options: {}
      )
      end

      # List organizations in an app.
      sig do
        params(
          cursor: String,
          limit: T.nilable(Float),
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Internal::Cursor[Privy::Organization])
      end
      def list(cursor: nil, limit: nil, request_options: {})
      end

      # Delete an organization by ID.
      sig do
        params(
          organization_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).void
      end
      def delete(
        # ID of the organization.
        organization_id,
        request_options: {}
      )
      end

      # Get an organization by ID.
      sig do
        params(
          organization_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Organization)
      end
      def get(
        # ID of the organization.
        organization_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
