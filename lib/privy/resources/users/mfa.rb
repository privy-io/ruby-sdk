# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        # @return [Privy::Resources::Users::Mfa::SMS]
        attr_reader :sms

        # @return [Privy::Resources::Users::Mfa::Totp]
        attr_reader :totp

        # @api private
        #
        # @param client [Privy::Client]
        def initialize(client:)
          @client = client
          @sms = Privy::Resources::Users::Mfa::SMS.new(client: client)
          @totp = Privy::Resources::Users::Mfa::Totp.new(client: client)
        end
      end
    end
  end
end
