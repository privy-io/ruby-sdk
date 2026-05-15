# frozen_string_literal: true

module Privy
  module Resources
    class KrakenEmbed
      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
