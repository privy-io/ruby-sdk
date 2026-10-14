# typed: strong

module Privy
  module Resources
    class Apps
      # Operations related to app settings and allowlist management
      class Denylist
        # Add a new entry to the denylist for an app. Adding an entry that already exists
        # returns the existing entry.
        sig do
          params(
            app_id: String,
            denylist_entry_create_request_body:
              T.any(
                Privy::DenylistEmailInput::OrHash,
                Privy::DenylistEmailDomainInput::OrHash,
                Privy::DenylistPhoneInput::OrHash,
                Privy::DenylistEthereumAddressInput::OrHash,
                Privy::DenylistSolanaAddressInput::OrHash
              ),
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::DenylistEntry)
        end
        def create(
          # The ID of the app.
          app_id,
          # Input for adding a denylist entry. Discriminated by type.
          denylist_entry_create_request_body:,
          request_options: {}
        )
        end

        # Get a page of denylist entries for an app, which block matching users from
        # logging in or linking the account.
        sig do
          params(
            app_id: String,
            cursor: String,
            limit: T.nilable(Float),
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::Internal::Cursor[Privy::DenylistEntry])
        end
        def list(
          # The ID of the app.
          app_id,
          # Cursor returned by the previous page.
          cursor: nil,
          limit: nil,
          request_options: {}
        )
        end

        # Remove an entry from the denylist for an app by its ID. Get entry IDs from the
        # list denylist entries endpoint.
        sig do
          params(
            app_id: String,
            id: String,
            request_options: Privy::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the app.
          app_id,
          # The ID of the denylist entry to remove.
          id:,
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
end
