# frozen_string_literal: true

module Privy
  module Resources
    class Aggregations
      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
