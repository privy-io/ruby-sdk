# frozen_string_literal: true

module Privy
  module Resources
    class Apps
      # Operations related to app settings and allowlist management
      class Allowlist
        # Add a new entry to the allowlist for an app. The allowlist must be enabled.
        #
        # @overload create(app_id, user_invite_input:, request_options: {})
        #
        # @param app_id [String] The ID of the app.
        #
        # @param user_invite_input [Privy::Models::EmailInviteInput, Privy::Models::EmailDomainInviteInput, Privy::Models::WalletInviteInput, Privy::Models::PhoneInviteInput] Input for adding or removing an allowlist entry. Discriminated by type.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::AllowlistEntry]
        #
        # @see Privy::Models::Apps::AllowlistCreateParams
        def create(app_id, params)
          parsed, options = Privy::Apps::AllowlistCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/apps/%1$s/allowlist", app_id],
            body: parsed[:user_invite_input],
            model: Privy::AllowlistEntry,
            options: options
          )
        end

        # Get all allowlist entries for an app. Returns the list of users allowed to
        # access the app when the allowlist is enabled.
        #
        # @overload list(app_id, request_options: {})
        #
        # @param app_id [String] The ID of the app.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Privy::Models::AllowlistEntry>]
        #
        # @see Privy::Models::Apps::AllowlistListParams
        def list(app_id, params = {})
          @client.request(
            method: :get,
            path: ["v1/apps/%1$s/allowlist", app_id],
            model: Privy::Internal::Type::ArrayOf[Privy::AllowlistEntry],
            options: params[:request_options]
          )
        end

        # Remove an entry from the allowlist for an app. The allowlist must be enabled.
        #
        # @overload delete(app_id, user_invite_input:, request_options: {})
        #
        # @param app_id [String] The ID of the app.
        #
        # @param user_invite_input [Privy::Models::EmailInviteInput, Privy::Models::EmailDomainInviteInput, Privy::Models::WalletInviteInput, Privy::Models::PhoneInviteInput] Input for adding or removing an allowlist entry. Discriminated by type.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::AllowlistDeletionResponse]
        #
        # @see Privy::Models::Apps::AllowlistDeleteParams
        def delete(app_id, params)
          parsed, options = Privy::Apps::AllowlistDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["v1/apps/%1$s/allowlist", app_id],
            body: parsed[:user_invite_input],
            model: Privy::AllowlistDeletionResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
