# frozen_string_literal: true

module Privy
  module Services
    class Policies < Privy::Resources::Policies
      include AuthorizationSupport

      attr_reader :privy_client

      def initialize(client:, privy_client:)
        super(client: client)
        @privy_client = privy_client
      end
    end
  end
end
