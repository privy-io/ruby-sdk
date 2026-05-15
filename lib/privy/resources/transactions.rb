# frozen_string_literal: true

module Privy
  module Resources
    # Operations related to transactions
    class Transactions
      # Get a transaction by transaction ID.
      #
      # @overload get(transaction_id, request_options: {})
      #
      # @param transaction_id [String] ID of the transaction.
      #
      # @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Privy::Models::Transaction]
      #
      # @see Privy::Models::TransactionGetParams
      def get(transaction_id, params = {})
        @client.request(
          method: :get,
          path: ["v1/transactions/%1$s", transaction_id],
          model: Privy::Transaction,
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
