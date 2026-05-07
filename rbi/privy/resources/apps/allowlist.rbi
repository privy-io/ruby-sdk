# typed: strong

module Privy
  module Resources
    class Apps
      # Operations related to app settings and allowlist management
      class Allowlist
        # Add a new entry to the allowlist for an app. The allowlist must be enabled.
        sig do
          params(
            app_id: String,
            user_invite_input:
              T.any(
                Privy::EmailInviteInput::OrHash,
                Privy::EmailDomainInviteInput::OrHash,
                Privy::WalletInviteInput::OrHash,
                Privy::PhoneInviteInput::OrHash
              ),
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::AllowlistEntry)
        end
        def create(
          # The ID of the app.
          app_id,
          # Input for adding or removing an allowlist entry. Discriminated by type.
          user_invite_input:,
          request_options: {}
        )
        end

        # Get all allowlist entries for an app. Returns the list of users allowed to
        # access the app when the allowlist is enabled.
        sig do
          params(
            app_id: String,
            request_options: Privy::RequestOptions::OrHash
          ).returns(T::Array[Privy::AllowlistEntry])
        end
        def list(
          # The ID of the app.
          app_id,
          request_options: {}
        )
        end

        # Remove an entry from the allowlist for an app. The allowlist must be enabled.
        sig do
          params(
            app_id: String,
            user_invite_input:
              T.any(
                Privy::EmailInviteInput::OrHash,
                Privy::EmailDomainInviteInput::OrHash,
                Privy::WalletInviteInput::OrHash,
                Privy::PhoneInviteInput::OrHash
              ),
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::AllowlistDeletionResponse)
        end
        def delete(
          # The ID of the app.
          app_id,
          # Input for adding or removing an allowlist entry. Discriminated by type.
          user_invite_input:,
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
