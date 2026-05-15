# typed: strong

module Privy
  module Resources
    class EmbeddedWallets
      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
