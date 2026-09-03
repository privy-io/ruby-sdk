# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class Payout
        # Operations related to fiat onramping and offramping
        # @return [Privy::Resources::Wallets::Payout::Fiat]
        attr_reader :fiat

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
          @fiat = Privy::Resources::Wallets::Payout::Fiat.new(client: client)
        end
      end
    end
  end
end
