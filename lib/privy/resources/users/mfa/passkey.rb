# frozen_string_literal: true

module Privy
  module Resources
    class Users
      class Mfa
        class Passkey
          # Operations related to user MFA
          # @return [Privy::Resources::Users::Mfa::Passkey::Enrollment]
          attr_reader :enrollment

          # Operations related to user MFA
          # @return [Privy::Resources::Users::Mfa::Passkey::Verification]
          attr_reader :verification

          # @api private
          #
          # @param client [Privy::Client]
          def initialize(client:)
            @client = client
            @enrollment = Privy::Resources::Users::Mfa::Passkey::Enrollment.new(client: client)
            @verification = Privy::Resources::Users::Mfa::Passkey::Verification.new(client: client)
          end
        end
      end
    end
  end
end
