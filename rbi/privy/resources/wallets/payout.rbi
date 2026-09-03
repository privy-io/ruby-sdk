# typed: strong

module Privy
  module Resources
    class Wallets
      class Payout
        # Operations related to fiat onramping and offramping
        sig { returns(Privy::Resources::Wallets::Payout::Fiat) }
        attr_reader :fiat

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
