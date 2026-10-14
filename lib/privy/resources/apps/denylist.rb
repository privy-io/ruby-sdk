# frozen_string_literal: true

module Privy
  module Resources
    class Apps
      # Operations related to app settings and allowlist management
      class Denylist
        # Add a new entry to the denylist for an app. Adding an entry that already exists
        # returns the existing entry.
        #
        # @overload create(app_id, denylist_entry_create_request_body:, request_options: {})
        #
        # @param app_id [String] The ID of the app.
        #
        # @param denylist_entry_create_request_body [Privy::Models::DenylistEmailInput, Privy::Models::DenylistEmailDomainInput, Privy::Models::DenylistPhoneInput, Privy::Models::DenylistEthereumAddressInput, Privy::Models::DenylistSolanaAddressInput] Input for adding a denylist entry. Discriminated by type.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Models::DenylistEntry]
        #
        # @see Privy::Models::Apps::DenylistCreateParams
        def create(app_id, params)
          parsed, options = Privy::Apps::DenylistCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["v1/apps/%1$s/denylist", app_id],
            body: parsed[:denylist_entry_create_request_body],
            model: Privy::DenylistEntry,
            options: options
          )
        end

        # Get a page of denylist entries for an app, which block matching users from
        # logging in or linking the account.
        #
        # @overload list(app_id, cursor: nil, limit: nil, request_options: {})
        #
        # @param app_id [String] The ID of the app.
        #
        # @param cursor [String] Cursor returned by the previous page.
        #
        # @param limit [Float, nil]
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Internal::Cursor<Privy::Models::DenylistEntry>]
        #
        # @see Privy::Models::Apps::DenylistListParams
        def list(app_id, params = {})
          parsed, options = Privy::Apps::DenylistListParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["v1/apps/%1$s/denylist", app_id],
            query: query,
            page: Privy::Internal::Cursor,
            model: Privy::DenylistEntry,
            options: options
          )
        end

        # Remove an entry from the denylist for an app by its ID. Get entry IDs from the
        # list denylist entries endpoint.
        #
        # @overload delete(app_id, id:, request_options: {})
        #
        # @param app_id [String] The ID of the app.
        #
        # @param id [String] The ID of the denylist entry to remove.
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Privy::Models::Apps::DenylistDeleteParams
        def delete(app_id, params)
          parsed, options = Privy::Apps::DenylistDeleteParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["v1/apps/%1$s/denylist", app_id],
            body: parsed,
            model: NilClass,
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
