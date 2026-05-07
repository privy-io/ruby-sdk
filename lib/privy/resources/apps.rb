# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to app settings and allowlist management
    class Apps
      # Operations related to app settings and allowlist management
      # @return [Privy::Resources::Apps::Allowlist]
      attr_reader :allowlist

      # Get the settings and configuration for an app.
      #
      # @overload get(app_id, request_options: {})
      #
      # @param app_id [String] The ID of the app.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::AppResponse]
      #
      # @see Privy::Models::AppGetParams
      def get(app_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/apps/%1$s", app_id],
          model: Privy::AppResponse,
          options: params[:request_options]
        )
      end

      # Get aggregated Privy gas credits charged for a set of wallets over a time range.
      # Maximum 100 wallet IDs and 30-day range per request.
      #
      # @overload get_gas_spend(end_timestamp:, start_timestamp:, wallet_ids:, request_options: {})
      #
      # @param end_timestamp [Float]
      # @param start_timestamp [Float]
      # @param wallet_ids [Array<String>]
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::GasSpendResponseBody]
      #
      # @see Privy::Models::AppGetGasSpendParams
      def get_gas_spend(params)
        parsed, options = Privy::AppGetGasSpendParams.dump_request(params)
        query = Privy::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "v1/apps/gas_spend",
          query: query,
          model: Privy::GasSpendResponseBody,
          options: options
        )
      end

      # Get the test accounts and credentials for an app.
      #
      # @overload get_test_credentials(app_id, request_options: {})
      #
      # @param app_id [String] The ID of the app.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::TestAccountsResponse]
      #
      # @see Privy::Models::AppGetTestCredentialsParams
      def get_test_credentials(app_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/apps/%1$s/test_credentials", app_id],
          model: Privy::TestAccountsResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
        @allowlist = Privy::Resources::Apps::Allowlist.new(client: client)
      end
    end
  end
end
