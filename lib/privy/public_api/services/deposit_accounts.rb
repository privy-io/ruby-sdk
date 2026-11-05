# frozen_string_literal: true

module Privy
  module Services
    # Wraps `wallets.deposit_accounts` so `crypto.create` is signed and carries
    # `privy-request-expiry`. `fiat` is the generated resource.
    class DepositAccounts < Privy::Resources::Wallets::DepositAccounts
      attr_reader :privy_client

      # @return [Privy::Services::DepositAccounts::Crypto]
      attr_reader :crypto

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
        @crypto = Privy::Services::DepositAccounts::Crypto.new(client: client, privy_client: privy_client)
      end
    end
  end
end
