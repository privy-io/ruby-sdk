# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to organizations
    class Organizations
      # Create an organization in an app.
      #
      # @overload create(default_key_quorum_id:, display_name:, request_options: {})
      #
      # @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      # @param display_name [String]
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Organization]
      #
      # @see Privy::Models::OrganizationCreateParams
      def create(params)
        parsed, options = Privy::OrganizationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v1/organizations",
          body: parsed,
          model: Privy::Organization,
          options: options
        )
      end

      # Update an organization by ID.
      #
      # @overload update(organization_id, default_key_quorum_id: nil, display_name: nil, request_options: {})
      #
      # @param organization_id [String] ID of the organization.
      #
      # @param default_key_quorum_id [String] A unique identifier for a key quorum.
      #
      # @param display_name [String]
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Organization]
      #
      # @see Privy::Models::OrganizationUpdateParams
      def update(organization_id, params = {})
        parsed, options = Privy::OrganizationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v1/organizations/%1$s", organization_id],
          body: parsed,
          model: Privy::Organization,
          options: options
        )
      end

      # List organizations in an app.
      #
      # @overload list(cursor: nil, limit: nil, request_options: {})
      #
      # @param cursor [String]
      # @param limit [Float, nil]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Internal::Cursor<Privy::Models::Organization>]
      #
      # @see Privy::Models::OrganizationListParams
      def list(params = {})
        parsed, options = Privy::OrganizationListParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/organizations",
          query: query,
          page: Privy::Internal::Cursor,
          model: Privy::Organization,
          options: options
        )
      end

      # Delete an organization by ID.
      #
      # @overload delete(organization_id, request_options: {})
      #
      # @param organization_id [String] ID of the organization.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Privy::Models::OrganizationDeleteParams
      def delete(organization_id, params = {})
        @client.request(
          method: :delete,
          path: ["v1/organizations/%1$s", organization_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get an organization by ID.
      #
      # @overload get(organization_id, request_options: {})
      #
      # @param organization_id [String] ID of the organization.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Organization]
      #
      # @see Privy::Models::OrganizationGetParams
      def get(organization_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/organizations/%1$s", organization_id],
          model: Privy::Organization,
          options: params[:request_options]
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
