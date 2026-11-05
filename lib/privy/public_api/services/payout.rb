# frozen_string_literal: true

module Privy
  module Services
    # Wraps `wallets.payout` so `fiat.create` is signed and carries
    # `privy-request-expiry`.
    class Payout < Privy::Resources::Wallets::Payout
      attr_reader :privy_client

      # @return [Privy::Services::Payout::Fiat]
      attr_reader :fiat

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
        @fiat = Privy::Services::Payout::Fiat.new(client: client, privy_client: privy_client)
      end
    end
  end
end
