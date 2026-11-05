# typed: strong

module Privy
  module Resources
    class Users
      class Earn
        # Operations related to wallet actions
        sig { returns(Privy::Resources::Users::Earn::Tmmf) }
        attr_reader :tmmf

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
