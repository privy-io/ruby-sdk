# frozen_string_literal: true

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to wallets
        # @return [Privy::Resources::Wallets::DepositAccounts::Crypto]
        attr_reader :crypto

        # Operations related to fiat onramping and offramping
        # @return [Privy::Resources::Wallets::DepositAccounts::Fiat]
        attr_reader :fiat

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
          @crypto = Privy::Resources::Wallets::DepositAccounts::Crypto.new(client: client)
          @fiat = Privy::Resources::Wallets::DepositAccounts::Fiat.new(client: client)
        end
      end
    end
  end
end
