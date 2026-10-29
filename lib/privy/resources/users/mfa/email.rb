# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Email
          # Operations related to user MFA
          # @return [Privy::Resources::Users::Mfa::Email::Enrollment]
          attr_reader :enrollment

          # Operations related to user MFA
          # @return [Privy::Resources::Users::Mfa::Email::Verification]
          attr_reader :verification

          # @api private
          #
          # @param client [Privy::Client]
          def initialize(client:)
            @client = client
            @enrollment = Privy::Resources::Users::Mfa::Email::Enrollment.new(client: client)
            @verification = Privy::Resources::Users::Mfa::Email::Verification.new(client: client)
          end
        end
      end
    end
  end
end
