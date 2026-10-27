# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class SMS
          # Operations related to user MFA
          # @return [Privy::Resources::Users::Mfa::SMS::Enrollment]
          attr_reader :enrollment

          # Operations related to user MFA
          # @return [Privy::Resources::Users::Mfa::SMS::Verification]
          attr_reader :verification

          # @api private
          #
          # @param client [Privy::Client]
          def initialize(client:)
            @client = client
            @enrollment = Privy::Resources::Users::Mfa::SMS::Enrollment.new(client: client)
            @verification = Privy::Resources::Users::Mfa::SMS::Verification.new(client: client)
          end
        end
      end
    end
  end
end
