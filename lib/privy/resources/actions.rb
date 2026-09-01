# frozen_string_literal: true

module Privy
  module Resources
    class Actions
      # @api private
      #
      # @param client [Privy::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
