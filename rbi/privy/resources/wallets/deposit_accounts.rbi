# typed: strong

module Privy
  module Resources
    class Wallets
      class DepositAccounts
        # Operations related to wallets
        sig { returns(Privy::Resources::Wallets::DepositAccounts::Crypto) }
        attr_reader :crypto

        # Operations related to fiat onramping and offramping
        sig { returns(Privy::Resources::Wallets::DepositAccounts::Fiat) }
        attr_reader :fiat

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
