# typed: strong

module Privy
  module Resources
    class Users
      class Mfa
        sig { returns(Privy::Resources::Users::Mfa::SMS) }
        attr_reader :sms

        sig { returns(Privy::Resources::Users::Mfa::Totp) }
        attr_reader :totp

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
