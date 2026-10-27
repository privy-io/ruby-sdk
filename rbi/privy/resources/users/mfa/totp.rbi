# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        class Totp
          # Operations related to user MFA
          sig { returns(Privy::Resources::Users::Mfa::Totp::Enrollment) }
          attr_reader :enrollment

          # Operations related to user MFA
          sig { returns(Privy::Resources::Users::Mfa::Totp::Verification) }
          attr_reader :verification

          # @api private
          sig { params(client: Privy::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
