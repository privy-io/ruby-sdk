# frozen_string_literal: true

module Privy
  module Services
    class Earn < Privy::Resources::Wallets::Earn
      attr_reader :privy_client

      # @return [Privy::Services::Earn::Ethereum]
      attr_reader :ethereum

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
        @ethereum = Privy::Services::Earn::Ethereum.new(client: client, privy_client: privy_client)
      end
    end
  end
end
