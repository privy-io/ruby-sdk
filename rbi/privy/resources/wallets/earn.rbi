# typed: strong

module Privy
  module Resources
    class Wallets
      class Earn
        # Operations related to wallet actions
        sig { returns(Privy::Resources::Wallets::Earn::Ethereum) }
        attr_reader :ethereum

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
