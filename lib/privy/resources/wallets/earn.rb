# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class Earn
        # Operations related to wallet actions
        # @return [Privy::Resources::Wallets::Earn::Ethereum]
        attr_reader :ethereum

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
          @ethereum = Privy::Resources::Wallets::Earn::Ethereum.new(client: client)
        end
      end
    end
  end
end
