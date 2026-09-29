# frozen_string_literal: true

module Privy
  module Resources
    class Policies
      # Operations related to policies
      class ConditionSets
        # List condition sets in an app.
        #
        # @overload list(cursor: nil, limit: nil, request_options: {})
        #
        # @param cursor [String] Cursor returned by the previous page.
        #
        # @param limit [Float, nil]
        #
        # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Privy::Internal::Cursor<Privy::Models::ConditionSet>]
        #
        # @see Privy::Models::Policies::ConditionSetListParams
        def list(params = {})
          parsed, options = Privy::Policies::ConditionSetListParams.dump_request(params)
          query = Privy::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "v1/condition_sets",
            query: query,
            page: Privy::Internal::Cursor,
            model: Privy::ConditionSet,
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
