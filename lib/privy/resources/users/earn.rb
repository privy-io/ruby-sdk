# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Earn
        # Operations related to wallet actions
        # @return [Privy::Resources::Users::Earn::Tmmf]
        attr_reader :tmmf

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
          @tmmf = Privy::Resources::Users::Earn::Tmmf.new(client: client)
        end
      end
    end
  end
end
